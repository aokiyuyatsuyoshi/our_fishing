import 'package:flutter/material.dart';

Widget ListTileRow(String context) {
  return ListTile(
    title: Text(
      context,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    trailing: Icon(
      Icons.arrow_forward,
      color: Colors.white,
    ),
  );
}

Widget WhiteDivider() {
  return Divider(
    color: Colors.white,
  );
}

Widget RemakeBottomBar() {
  return Row(
    children: [
      ElevatedButton(
        child: const Text('Btn'),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        onPressed: () {},
      ),
      ElevatedButton(
        child: const Text('Btn'),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        onPressed: () {},
      ),
      ElevatedButton(
        child: const Text('Btn'),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        onPressed: () {},
      ),
    ],
  );
}
