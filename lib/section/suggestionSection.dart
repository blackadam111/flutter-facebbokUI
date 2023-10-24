import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/friendSuggest.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FriendSuggestion(
                  avatar: darkseid,
                  name: "Darkseid",
                  mutualFriend: "5 Mutual Friends",
                  addFriend: () => print("add"),
                  removefriend: () => print("remove"),
                ),
                FriendSuggestion(
                  avatar: deathstroke,
                  name: "Deathstroke",
                  mutualFriend: "2 Mutual Friends",
                  addFriend: () => print("add"),
                  removefriend: () => print("remove"),
                ),
                FriendSuggestion(
                  avatar: stepenwolf,
                  name: "Steppenwolf",
                  mutualFriend: "5 Mutual Friends",
                  addFriend: () => print("add"),
                  removefriend: () => print("remove"),
                ),
                FriendSuggestion(
                  avatar: joker,
                  name: "Joker",
                  mutualFriend: "5 Mutual Friends",
                  addFriend: () => print("add"),
                  removefriend: () => print("remove"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
