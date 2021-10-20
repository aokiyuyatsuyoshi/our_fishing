import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class postFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: new Icon(Icons.add),
      label: Shimmer.fromColors(
        baseColor: Colors.white,
        highlightColor: Colors.lightBlueAccent,
        child: Text("情報を共有する"),
      ),
    );
  }
}
