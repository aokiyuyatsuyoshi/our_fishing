import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class postFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: new Icon(Icons.add),
      label: Text("情報を共有する"),
    );
  }
}
