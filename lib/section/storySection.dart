import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
              storyText: "Add to story",
              avatar: superman,
              post: post1,
              storyDisplay: true),
          StoryCard(
            storyText: "Batman",
            avatar: batman,
            post: post2,
          ),
          StoryCard(
            storyText: "Wonder\nwoman",
            avatar: wonderwoman,
            post: post3,
          ),
          StoryCard(
            storyText: "Martian\n manhunter",
            avatar: martian,
            post: post4,
          ),
          StoryCard(
            storyText: "Flash",
            avatar: flash,
            post: post5,
          ),
          StoryCard(
            storyText: "Cyborg",
            avatar: cyborg,
            post: post6,
          ),
          StoryCard(
            storyText: "Aquaman",
            avatar: aquaman,
            post: post2,
          ),
        ],
      ),
    );
  }
}
