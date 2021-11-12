import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:untitled1/share_post/share_post_page.dart';

class postFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SharePostPage(),
          ),
        );
      },
      icon: new Icon(Icons.add),
      label: Shimmer.fromColors(
        baseColor: Colors.white,
        highlightColor: Colors.lightBlueAccent,
        child: Text("情報を共有する"),
      ),
    );
  }
}
