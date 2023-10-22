import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/section/headerButtonSection.dart';
import 'package:facebook_clone/section/postCardImageSection.dart';
import 'package:facebook_clone/section/roomSection.dart';
import 'package:facebook_clone/section/statusSection.dart';
import 'package:facebook_clone/section/storySection.dart';
import 'package:facebook_clone/section/suggestionSection.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:facebook_clone/widgets/headerIconButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () => print("search"),
            ),
            CircularButton(
              buttonIcon: Icons.message,
              buttonAction: () => print("message"),
            )
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(
              button1: HeaderIconButton(
                iconsButton: Icons.video_call,
                buttonAction: () => print("videocall"),
                iconColor: Colors.red,
                iconText: "Video",
              ),
              button2: HeaderIconButton(
                iconsButton: Icons.photo_library,
                buttonAction: () => print("photo"),
                iconColor: Colors.green,
                iconText: "Photo",
              ),
              button3: HeaderIconButton(
                iconsButton: Icons.video_call,
                buttonAction: () => print("room"),
                iconColor: Colors.indigo,
                iconText: "Room",
              ),
            ),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
            thickDivider,
            PostCard(
              avatar: aquaman,
              name: "Aquaman",
              publishedTime: "4h",
              blueTick: true,
              postLike: "1k",
              postComment: "50k",
              postShare: "2k",
              postTitle: "A strong man is strongest alone.",
              postImage: aquamanpost,
            ),
            thickDivider,
            PostCard(
              avatar: greenlantern,
              name: "Green Lantern",
              publishedTime: "2h",
              blueTick: true,
              postLike: "1k",
              postComment: "6k",
              postShare: "1k",
              postTitle: "Lantern Corps",
              postImage: greenpost,
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: batman,
              name: "Batman",
              publishedTime: "10h",
              blueTick: true,
              postLike: "5k",
              postComment: "70k",
              postShare: "3k",
              postTitle: "do u bleed?",
              postImage: batmanpost,
            ),
            thickDivider,
            PostCard(
              avatar: flash,
              name: "Flash",
              publishedTime: "21h",
              blueTick: true,
              postLike: "7k",
              postComment: "20k",
              postShare: "25k",
              postTitle: "Speed force",
              postImage: flashpost,
            ),
            thickDivider,
            PostCard(
              avatar: wonderwoman,
              name: "WonderWoman",
              publishedTime: "10h",
              blueTick: true,
              postLike: "7k",
              postComment: "70k",
              postShare: "2k",
              postTitle: "I belong to no one.",
              postImage: wonderpost,
            ),
            thickDivider,
            PostCard(
              avatar: cyborg,
              name: "Cyborg",
              publishedTime: "2h",
              blueTick: true,
              postLike: "3k",
              postComment: "80k",
              postShare: "1k",
              postTitle: "I'm Not Broken. And I'm Not Alone.",
              postImage: cyborgpost,
            ),
            thickDivider,
            PostCard(
              avatar: superman,
              name: "Superman",
              publishedTime: "7h",
              blueTick: true,
              postLike: "9k",
              postComment: "90k",
              postShare: "4k",
              postTitle: "Hope",
              postImage: supermanpost,
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
