import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class PostCardImage extends StatelessWidget {
  final String postImage;
  const PostCardImage({super.key, required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Image.asset(postImage),
    );
  }
}
