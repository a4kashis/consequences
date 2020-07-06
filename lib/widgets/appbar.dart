import 'package:consequences/utilities/common.dart';
import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    backgroundColor: blue,
    leading: Padding(
        padding: const EdgeInsets.only(
            left: 18.0, top: 10.0, bottom: 10.0, right: 0.0),
        child: Image.asset("assets/logo.png")),
    title: Text("CONSEQUENCE", style: TextStyle(color: white)),
    actions: <Widget>[
      InkWell(
        onTap: () {},
        child: Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: lightblue, border: Border.all(color: Color(0xff508ebd))),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
              child: Text(
                "PROGRESS",
                style: TextStyle(color: white),
              ),
            )),
      )
    ],
  );
}
