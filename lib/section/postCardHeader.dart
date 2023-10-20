import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCardHeader extends StatelessWidget {
  const PostCardHeader({
    super.key,
    required this.avatar,
    required this.name,
    required this.publishedTime,
  });

  final String avatar;
  final String name;
  final String publishedTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(profilePhoto: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          BlueTick()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedTime),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.public)
        ],
      ),
      trailing:
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_rounded)),
    );
  }
}
