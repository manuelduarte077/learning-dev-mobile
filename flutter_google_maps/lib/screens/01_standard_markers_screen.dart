import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StandardMarkersScreen extends StatefulWidget {
  const StandardMarkersScreen({super.key});

  @override
  State<StandardMarkersScreen> createState() => _StandardMarkersScreenState();
}

class _StandardMarkersScreenState extends State<StandardMarkersScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(1.35, 103.8),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    var markers = <Marker>{
      const Marker(
        markerId: MarkerId('marker_1'),
        position: LatLng(1.35, 103.8),
        infoWindow: InfoWindow(
          title: 'Marker 1',
          snippet: 'This is marker 1',
        ),
      ),
      Marker(
        markerId: const MarkerId('marker_2'),
        position: const LatLng(1.35, 103.9),
        infoWindow: const InfoWindow(
          title: 'Marker 2',
          snippet: 'This is marker 2',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueAzure,
        ),
      ),
      Marker(
        markerId: const MarkerId('marker_3'),
        position: const LatLng(1.35, 103.7),
        infoWindow: const InfoWindow(
          title: 'Marker 3',
          snippet: 'This is marker 3',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
      ),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard Markers'),
      ),
      body: GoogleMap(
        myLocationEnabled: false,
        initialCameraPosition: _cameraPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: markers,
      ),
    );
  }
}
