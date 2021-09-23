# video_call_flutter_example

Demonstrates how to use the video_call_flutter plugin.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Language: [English](README.md)

Video call  is a flutter library that allows you to create a video call to someone. In this library you can connect 72 person at one time.





- [like_button](#like_button)
  - [How to use it.](#how-to-use-it)
  - [The time to send your request](#the-time-to-send-your-request)
  - [parameters](#parameters)

##  How to use it.

the default effects is Icons.favorite
```dart
  LikeButton(),
```

and you can also define custom effects.
```dart
  LikeButton(
          size: buttonSize,
          circleColor:
              CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xff33b5e5),
            dotSecondaryColor: Color(0xff0099cc),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.home,
              color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
              size: buttonSize,
            );
          },
          likeCount: 665,
          countBuilder: (int count, bool isLiked, String text) {
            var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
            Widget result;
            if (count == 0) {
              result = Text(
                "love",
                style: TextStyle(color: color),
              );
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
        ),
```

## The time to send your request
```dart
    LikeButton(
      onTap: onLikeButtonTapped,
    ),
```

```dart
  Future<bool> onLikeButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
  }
```

## parameters
| parameter                  | description                                                                           | default                                                                                                                                                                               |
| -------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| size                       | size of like widget                                                                   | 30.0                                                                                                                                                                                  |
| animationDuration          | animation duration to change isLiked state                                            | const Duration(milliseconds: 1000)                                                                                                                                                    |
| bubblesSize                | total size of bubbles                                                                 | size * 2.0                                                                                                                                                                            |
| bubblesColor               | colors of bubbles                                                                     | const BubblesColor(dotPrimaryColor: const Color(0xFFFFC107),dotSecondaryColor: const Color(0xFFFF9800),dotThirdColor: const Color(0xFFFF5722),dotLastColor: const Color(0xFFF44336),) |
| circleSize                 | final size of circle                                                                  | size * 0.8                                                                                                                                                                            |
| circleColor                | colors of circle                                                                      | const CircleColor(start: const Color(0xFFFF5722), end: const Color(0xFFFFC107)                                                                                                        |
| onTap                      | tap call back of like button，you can handle your request in this call back           |                                                                                                                                                                                       |
| isLiked                    | whether it is liked(if it's null, always show like animation and increase like count) | false                                                                                                                                                                                 |
| likeCount                  | if null, will not show)                                                               | null                                                                                                                                                                                  |
| mainAxisAlignment          | MainAxisAlignment for like button                                                     | MainAxisAlignment.center                                                                                                                                                              |
| likeBuilder                | builder to create like widget                                                         | null                                                                                                                                                                                  |
| countBuilder               | builder to create like count widget                                                   | null                                                                                                                                                                                  |
| likeCountAnimationDuration | animation duration to change like count                                               | const Duration(milliseconds: 500)                                                                                                                                                     |
| likeCountAnimationType     | animation type to change like count(none,part,all)                                    | LikeCountAnimationType.part                                                                                                                                                           |
| likeCountPadding           | padding for like count widget                                                         | const EdgeInsets.only(left: 3.0)                                                                                                                                                      |
| countPostion               | top,right,bottom,left of like button widget                                           | CountPostion.right                                                                                                                                                                    |
| countDecoration            | decoration of like count widget                                                       | null                                                                                                                                                                                  |

