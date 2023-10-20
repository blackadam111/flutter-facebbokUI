import 'package:flutter/material.dart';

class HeaderIconButton extends StatelessWidget {
  final IconData iconsButton;
  final void Function() buttonAction;
  final String iconText;
  final Color iconColor;

  const HeaderIconButton({
    required this.iconsButton,
    required this.buttonAction,
    required this.iconText,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          iconsButton,
          color: iconColor,
        ),
        label: Text(iconText));
  }
}
