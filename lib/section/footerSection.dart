import 'package:facebook_clone/widgets/headerIconButton.dart';
import 'package:flutter/material.dart';

class FooterButtonSection extends StatelessWidget {
  const FooterButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget divider = VerticalDivider(thickness: 1, color: Colors.grey[300]);
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderIconButton(
            iconsButton: Icons.thumb_up,
            buttonAction: () => print("videocall"),
            iconColor: Colors.grey,
            iconText: "Like",
          ),
          divider,
          HeaderIconButton(
            iconsButton: Icons.comment,
            buttonAction: () => print("photo"),
            iconColor: Colors.grey,
            iconText: "Comment",
          ),
          divider,
          HeaderIconButton(
            iconsButton: Icons.share,
            buttonAction: () => print("room"),
            iconColor: Colors.grey,
            iconText: "share",
          )
        ],
      ),
    );
  }
}
