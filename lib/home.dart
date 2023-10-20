import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/section/headerButtonSection.dart';
import 'package:facebook_clone/section/postCardImageSection.dart';
import 'package:facebook_clone/section/roomSection.dart';
import 'package:facebook_clone/section/statusSection.dart';
import 'package:facebook_clone/section/storySection.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
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
            const HeaderButtonSection(),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
            thickDivider,
            PostCard(
              avatar: aquaman,
              name: "Aquaman",
              publishedTime: "4h",
            ),
          ],
        ),
      ),
    );
  }
}
