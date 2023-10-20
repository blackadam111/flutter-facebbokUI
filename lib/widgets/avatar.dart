import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String profilePhoto;
  final bool displayStatus;
  final bool displayBorder;
  const Avatar(
      {super.key,
      required this.profilePhoto,
      required this.displayStatus,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator = Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2)),
        ));
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(color: Colors.greenAccent, width: 2)
                : null),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              profilePhoto,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            )),
      ),
      displayStatus ? statusIndicator : SizedBox(),
    ]);
  }
}
