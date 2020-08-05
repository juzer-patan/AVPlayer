import 'package:flutter/material.dart';
import 'package:task/ui/remote.dart';
import 'package:task/ui/video.dart';
import 'ui/remote_video.dart';
import 'ui/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaff = Scaffold(
    appBar: AppBar(
      title: Text(
        'Audio/Video Player',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.black87,
        ),
      ),
      backgroundColor: Colors.amber,
      bottom: TabBar(
        tabs: [
          Tab(
          text: 'Asset_Audio',
        ),
        Tab(text: 'Remote_Audio',),
        Tab(text: 'Asset_Video',),
        Tab(text: 'Remote_Video',)

        ]
      ),
    ),
    body: TabBarView(children: [myapp(),remote(),VideoApp(),RemoteVideoApp()]),
  );
  var tab = DefaultTabController(length: 4, child: scaff);
  return MaterialApp(
    home: tab,
    debugShowCheckedModeBanner: false,
  );
  }
}

