import 'file:///C:/Users/a4kas/Desktop/consequences/lib/utilities/db.dart';
import 'package:consequences/utilities/common.dart';
import 'package:consequences/screens/videodetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var values = chapter_details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: SafeArea(
        child: ListView.builder(
            itemCount: values.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => VideoDetails(
                            chapter_url: values[index]["chapter_url"],
                            chapter_no: values[index]["chapter_no"],
                              )));
                  print(values[index]["chapter_url"]);
                },
                child: Card(
                  color: accentblue,
                  child: ListTile(
                    title: Text(
                      values[index]["chapter_no"],
                      style: TextStyle(color: white),
                    ),
                    subtitle: Text(values[index]["chapter_date"],
                        style: TextStyle(color: grey)),
                    trailing: Text(values[index]["chapter_duration"],
                        style: TextStyle(color: grey)),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
