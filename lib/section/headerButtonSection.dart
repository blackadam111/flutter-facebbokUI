import 'package:facebook_clone/widgets/headerIconButton.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget divider = VerticalDivider(thickness: 1, color: Colors.grey[300]);
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderIconButton(
            iconsButton: Icons.video_call,
            buttonAction: () => print("videocall"),
            iconColor: Colors.red,
            iconText: "Video",
          ),
          divider,
          HeaderIconButton(
            iconsButton: Icons.photo_library,
            buttonAction: () => print("photo"),
            iconColor: Colors.green,
            iconText: "Photo",
          ),
          divider,
          HeaderIconButton(
            iconsButton: Icons.video_call,
            buttonAction: () => print("room"),
            iconColor: Colors.indigo,
            iconText: "Room",
          )
        ],
      ),
    );
  }
}
