import 'package:consequences/widgets/appbar.dart';
import 'package:consequences/widgets/verticallist.dart';
import 'package:flutter/material.dart';
import '../utilities/common.dart';
import 'package:consequences/widgets/player.dart';

class VideoDetails extends StatefulWidget {
  final chapter_url;

  VideoDetails({this.chapter_url});

  @override
  _VideoDetailsState createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(
//        SystemUiOverlayStyle(
//          statusBarIconBrightness: Brightness.light,
//          systemNavigationBarIconBrightness: Brightness.light,
//        ));

    return Scaffold(
      backgroundColor: blue,
      appBar: appBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: MediaQuery.of(context).size.width / 1.6,
              delegate: SliverChildListDelegate([
                Player(
                  url: widget.chapter_url,
                )
              ]),
            ),
            SliverAppBar(
              backgroundColor: lightblue,
              pinned: true,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TabBar(
                  isScrollable: true,
                  controller: _controller,
                  labelColor: white,
                  tabs: [
                    new Tab(text: 'NOTES'),
                    new Tab(text: 'DISCUSSION'),
                    new Tab(text: 'DOUBTS'),
                    new Tab(text: 'TRAINING'),
                    new Tab(text: 'LOREM'),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  new VerticalList(),
                  new Container(
                      child:
                          Text("Lorem Ipsum", style: TextStyle(color: white))),
                  new Container(
                      child:
                          Text("Lorem Ipsum", style: TextStyle(color: white))),
                  new Container(
                      child:
                          Text("Lorem Ipsum", style: TextStyle(color: white))),
                  new Container(
                      child:
                          Text("Lorem Ipsum", style: TextStyle(color: white))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
