import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class FriendSuggestion extends StatelessWidget {
  const FriendSuggestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                darkseid,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
