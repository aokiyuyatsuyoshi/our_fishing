import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsDemo extends StatefulWidget {
  bool isPlanePicture;
  @override
  State createState() => MapsDemoState();

  MapsDemo({this.isPlanePicture}); //コンストラクタ

}

class MapsDemoState extends State<MapsDemo> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(35.692558, 139.699530),
              zoom: 17.0,
            ),
            onMapCreated: _onMapCreated,
            mapType: widget.isPlanePicture ? MapType.hybrid : MapType.terrain),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
