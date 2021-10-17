import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Widget CircleUserIconWidget() {
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

Widget UserNameWidget(String userName) {
  return Text(
    userName,
    style: TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget UserIdWidget(String userId) {
  return Text(
    userId,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 20,
    ),
  );
}

Widget EditProfileButtonWidget() {
  return ElevatedButton(
    child: const Text('プロフィールを編集する'),
    style: ElevatedButton.styleFrom(
      primary: Colors.orange,
      onPrimary: Colors.black,
      elevation: 16,
    ),
    onPressed: () {},
  );
}

// Widget EditProfileButtonWidget() {
//   return ElevatedButton(
//     child: const Text('プロフィールを編集する'),
//     style: ElevatedButton.styleFrom(
//       primary: Colors.orange,
//       onPrimary: Colors.black,
//       elevation: 16,
//     ),
//     onPressed: () {},
//   );
// }
