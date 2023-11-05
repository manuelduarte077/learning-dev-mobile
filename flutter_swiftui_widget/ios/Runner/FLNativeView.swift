import Flutter
import SwiftUI
import UIKit


class FLNativeViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger
    
    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init ()
    }
    
    func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return FLNativeView(
            frame: frame,
            viewIdentifier: viewId,
            arguments: args,
            binaryMessenger: messenger
        )
    }
        
    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
    
}


class FLNativeView: NSObject, FlutterPlatformView {
    private var _view: UIView
    
    init( frame: CGRect,
          viewIdentifier viewId: Int64,
          arguments args: Any?,
          binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIView()
        super.init ()
        createNativeView(view: _view, arguments: args)
    }
    
    func view() -> UIView {
        return _view
    }
    
        
    func createNativeView(view _view: UIView, arguments args: Any?){
        
        let keyWindows = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) ?? UIApplication.shared.windows.first
        let topController = keyWindows?.rootViewController
        
        let vc = UIHostingController(rootView: SwiftUIView())
        let swiftuiView = vc.view!
        swiftuiView.translatesAutoresizingMaskIntoConstraints = false
        
        topController!.addChild(vc)
        _view.addSubview(swiftuiView)
        
        NSLayoutConstraint.activate([
            swiftuiView.leadingAnchor.constraint (equalTo: _view.leadingAnchor),
            swiftuiView.trailingAnchor.constraint(equalTo: _view.trailingAnchor),
            swiftuiView.topAnchor.constraint (equalTo: _view.topAnchor),
            swiftuiView.bottomAnchor.constraint (equalTo: _view.bottomAnchor)
        ])
        
        vc.didMove(toParent: topController)
    }
}

