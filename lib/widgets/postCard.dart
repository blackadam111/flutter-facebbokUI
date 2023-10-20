import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/section/footerSection.dart';
import 'package:facebook_clone/section/headerButtonSection.dart';
import 'package:facebook_clone/section/postCardHeader.dart';
import 'package:facebook_clone/section/postCardImageSection.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:facebook_clone/widgets/headerIconButton.dart';
import 'package:facebook_clone/widgets/titleSection.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedTime;
  final bool blueTick;
  final String postLike;
  final String postComment;
  final String postShare;
  const PostCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.publishedTime,
      this.blueTick = false,
      required this.postLike,
      required this.postComment,
      required this.postShare});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCardHeader(
              avatar: avatar,
              name: name,
              publishedTime: publishedTime,
              blueTick: blueTick),
          titleSection(),
          PostCardImage(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                    postText(label: postLike),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      postText(label: postComment),
                      SizedBox(width: 5),
                      postText(label: "Comments"),
                      SizedBox(width: 10),
                      postText(label: postShare),
                      SizedBox(width: 5),
                      postText(label: "Shares"),
                      SizedBox(width: 10),
                      Avatar(
                          profilePhoto: batman,
                          displayStatus: false,
                          width: 20,
                          height: 20)
                    ],
                  ),
                )
              ],
            ),
          ),
          //FooterButtonSection()
          HeaderButtonSection(
            button1: HeaderIconButton(
              iconsButton: Icons.thumb_up,
              buttonAction: () => print("videocall"),
              iconColor: Colors.grey,
              iconText: "Like",
            ),
            button2: HeaderIconButton(
              iconsButton: Icons.comment,
              buttonAction: () => print("photo"),
              iconColor: Colors.grey,
              iconText: "Comment",
            ),
            button3: HeaderIconButton(
              iconsButton: Icons.share,
              buttonAction: () => print("room"),
              iconColor: Colors.grey,
              iconText: "share",
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
