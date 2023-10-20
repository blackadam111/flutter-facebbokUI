import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String storyText;
  final String avatar;
  final String post;
  final bool storyDisplay;
  final bool displayBorder;
  const StoryCard({
    super.key,
    required this.storyText,
    required this.avatar,
    this.storyDisplay = false,
    required this.post,
    this.displayBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(post), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              left: 5,
              child: storyDisplay
                  ? CircularButton(
                      color: Colors.blue,
                      buttonIcon: Icons.add,
                      buttonAction: () => print("add"),
                    )
                  : Avatar(
                      profilePhoto: avatar,
                      displayStatus: storyDisplay,
                      displayBorder: displayBorder)),
          Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                storyText != null ? storyText : "N/A",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
