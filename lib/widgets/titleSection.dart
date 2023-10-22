import 'package:flutter/material.dart';

class titleSection extends StatelessWidget {
  final String postTitle;
  const titleSection({super.key, required this.postTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
