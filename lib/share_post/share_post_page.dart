import 'package:flutter/material.dart';

class SharePostPage extends StatelessWidget {
  const SharePostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "新規投稿",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white.withOpacity(0.5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                _CircleUserIconWidget(),
                SizedBox(
                  width: 30,
                ),
                Text("dddd"),
                TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle:
                        TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

_CircleUserIconWidget() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    child: CircleAvatar(
      radius: 40,
      backgroundColor: Colors.white,
      backgroundImage: NetworkImage(
          'https://assets.st-note.com/production/uploads/images/37339503/picture_pc_46a3bbb12b45b56f50edd5ca17efcfd4.png'),
    ),
  );
}
