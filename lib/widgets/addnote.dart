import 'package:consequences/utilities/common.dart';
import 'package:flutter/material.dart';

Widget addNote() {
  return Container(
    height: 60,
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 3),
    color: Color(0xff161630),
    child: TextField(
      readOnly: true,
      cursorColor: white,
      style: TextStyle(color: grey),
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          hintText: "Add new note",
          hintStyle: TextStyle(color: grey),
          counterStyle: TextStyle(color: white),
          suffixIcon: Container(
            margin: EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
            decoration: BoxDecoration(border: Border.all(color: accentblue)),
            child: IconButton(
              color: grey,
              onPressed: () {},
              icon: Icon(Icons.settings_voice),
            ),
          )),
    ),
  );
}
