import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  // const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
    ;
  }
}
