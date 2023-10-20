import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.video_call),
              label: const Text("Create \nroom"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
            ),
          ),
          Avatar(profilePhoto: batman, displayStatus: true),
          Avatar(profilePhoto: wonderwoman, displayStatus: true),
          Avatar(profilePhoto: flash, displayStatus: true),
          Avatar(profilePhoto: cyborg, displayStatus: true),
          Avatar(profilePhoto: martian, displayStatus: true),
          Avatar(profilePhoto: greenlantern, displayStatus: true)
        ],
      ),
    );
  }
}
