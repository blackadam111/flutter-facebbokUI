import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/section/postCardHeader.dart';
import 'package:facebook_clone/section/postCardImageSection.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:facebook_clone/widgets/titleSection.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedTime;
  const PostCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.publishedTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCardHeader(
              avatar: avatar, name: name, publishedTime: publishedTime),
          titleSection(),
          PostCardImage(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                    postText(label: '10k'),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      postText(label: "1k"),
                      SizedBox(width: 5),
                      postText(label: "Comeents"),
                      SizedBox(width: 10),
                      postText(label: "500"),
                      SizedBox(width: 5),
                      postText(label: "Shares")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget postText({required String label}) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }
}
