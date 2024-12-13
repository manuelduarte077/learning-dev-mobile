import SwiftUI

struct SwiftUIView: View {
    @State private var isTapped = false

    var body: some View {
        VStack {
            Text("SwiftUI Flutter")
                .font(.largeTitle)
                .foregroundColor(isTapped ? .blue : .black)
                .padding()
                .onTapGesture {
                    withAnimation {
                        self.isTapped.toggle()
                    }
                }

            if isTapped {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}
