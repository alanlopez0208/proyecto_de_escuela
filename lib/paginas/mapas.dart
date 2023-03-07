import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapaSampleState();
  }
}

class MapaSampleState extends State<MapaPage> {
  Completer<GoogleMapController> _completer = Completer();
  static final CameraPosition _position =
      CameraPosition(target: LatLng(22.29997881, -102.2413964), zoom: 5.0);
  static final CameraPosition _durango = CameraPosition(
      bearing: 45,
      target: LatLng(24.0226824, -104.7177654),
      tilt: 20,
      zoom: 11.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: _position,
            onMapCreated: (GoogleMapController controller) {
              _completer.complete(controller);
            }),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: _gotoDurango,
            label: Text('Durango'),
            icon: Icon(Icons.card_giftcard)));
  }

  Future<void> _gotoDurango() async {
    final GoogleMapController controller = await _completer.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(_durango));
  }
}
