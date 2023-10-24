import 'dart:ffi';

import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class FriendSuggestion extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriend;
  final Function() addFriend;
  final Function() removefriend;
  const FriendSuggestion(
      {super.key,
      required this.avatar,
      required this.name,
      required this.mutualFriend,
      required this.addFriend,
      required this.removefriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          suggestPhoto(),
          suggestDetails(),
        ],
      ),
    );
  }

  Widget iconButton({
    required IconData buttonIcon,
    required Function() buttonAction,
    required String iconText,
    required Color iconColor,
    required Color textColor,
  }) {
    return ElevatedButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
        ),
        label: Text(
          iconText,
          style: TextStyle(color: textColor),
        ));
  }

  Widget removeButton(
      {required Function() buttonAction,
      required String buttonText,
      required Color buttonColor,
      required Color buttonTextColor}) {
    return ElevatedButton(
      onPressed: buttonAction,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
    );
  }

  Positioned suggestDetails() {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            border:
                Border.all(color: Color.fromARGB(255, 216, 216, 216), width: 1),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(mutualFriend),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                      buttonIcon: Icons.add_moderator,
                      buttonAction: addFriend,
                      iconText: "Add Friend",
                      iconColor: Colors.white,
                      textColor: Colors.white),
                  removeButton(
                      buttonAction: removefriend,
                      buttonText: "Remove",
                      buttonColor: Color.fromARGB(255, 216, 216, 216),
                      buttonTextColor: Colors.black)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned suggestPhoto() {
    return Positioned(
      right: 0,
      left: 0,
      top: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          avatar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
