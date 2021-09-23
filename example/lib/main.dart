import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:video_call_flutter/video_call_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Video call'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black
          ),
          child: Center(child: VideoCallFlutter(cover_image: "assets/download.png",controller: controller,Heading: "Enter your code",Button1: "Join",Button2: "Share",user_email: "avinashjindal@gmail.com",video_Subject: "My video call",User_image: "assets/download.png",User_name: "Avinash",)),
        )
      )
    );
  }
}
