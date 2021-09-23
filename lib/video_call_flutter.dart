
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
class VideoCallFlutter extends StatefulWidget {
  final String image;
  final TextEditingController controller;
  final String Button1;
  final String Button2;
  final String Heading;
  VideoCallFlutter({required this.image ,required this.controller, required this.Button1, required this.Button2, required this.Heading});

  @override
  _VideoCallFlutterState createState() => _VideoCallFlutterState();
}

class _VideoCallFlutterState extends State<VideoCallFlutter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset(widget.image, width: 55, height: 50),
            SizedBox(height: 20,),
            Text(widget.Heading),
            SizedBox(height: 20,),
            TextField(
                controller: widget.controller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)
                  ),
                  hintText: 'Meeting code',

                  labelText: 'code',
                )
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  child: ElevatedButton(onPressed: () {
                    _joinMeeting();
                  }, child: Text(widget.Button1)),
                ),
                Container(
                  width: 120,
                  child: ElevatedButton(onPressed: () {

                  }, child: Text(widget.Button2)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  _joinMeeting() async {
    try {

      var options = JitsiMeetingOptions(room: widget.controller.text)
      // Required, spaces will be trimme
        ..serverURL = "https://meet.jit.si"
        ..subject = "Meeting with Gunschu"
        ..userDisplayName = "My Name"
        ..userEmail = "myemail@email.com"
        ..userAvatarURL = "https://someimageurl.com/image.jpg" // or .png
        ..audioOnly = true
        ..audioMuted = true
        ..videoMuted = true;


      await JitsiMeet.joinMeeting(options);
      //JitsiMeet();
    } catch (error) {
      debugPrint("error: $error");
    }
  }
}