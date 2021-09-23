# video_call_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Language: [English](README.md) 




![WhatsApp Image 2021-09-23 at 8 59 05 PM](https://user-images.githubusercontent.com/52163745/134537458-74056711-4465-457f-babd-aab8c20e2473.jpeg)
![WhatsApp Image 2021-09-23 at 8 59 04 PM](https://user-images.githubusercontent.com/52163745/134537416-3e50b300-dc27-4041-b9a2-a7aff3dfdb81.jpeg)

- [like_button](#like_button)
  - [How to use it.](#how-to-use-it)
  - [The time to send your request](#the-time-to-send-your-request)
  - [parameters](#parameters)

##  How to use it.

the default widget
```dart
  VideoCallFlutter(),
```

Example
```dart
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
          child: Center(child: VideoCallFlutter(cover_image: "",controller: controller,Heading: "Enter your code",Button1: "Join",Button2: "Share",user_email: "",video_Subject: "My video call",User_image: "",User_name: "",)),
        )
      )
    );
  }
}

```



