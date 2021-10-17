import 'package:flutter/material.dart';
import 'package:untitled1/MapPage/Google_Map_widget.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            child: MapsDemo(),
          ),
        ],
      ),
    );
  }
}
