import 'package:consequences/utilities/common.dart';
import 'package:consequences/utilities/db.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'addnote.dart';

class VerticalList extends StatefulWidget {
  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  var values = chapter_details;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      addNote(),
      Flexible(
        child: ListView.builder(
            itemExtent: 120,
            itemCount: values.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  print("pressed");
                  setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: lightblue,
                      border: Border.all(color: accentblue, width: 2.0)),
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                                flex: 5,
                                child: Text(values[index]["chapter_desc"],
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 15.5,
                                        letterSpacing: 0.5))),
                            Flexible(
                                flex: 1,
                                child: Text(values[index]["chapter_duration"],
                                    style: TextStyle(
                                        color: white, fontSize: 20.0)))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(values[index]["chapter_date"],
                                style: TextStyle(color: grey)),
                            Text(values[index]["chapter_no"],
                                style: TextStyle(color: grey))
                          ]),
                    ],
                  ),
                ),
              );
            }),
      ),
    ]);
  }
}
