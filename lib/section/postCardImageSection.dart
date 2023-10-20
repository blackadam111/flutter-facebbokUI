import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class PostCardImage extends StatelessWidget {
  const PostCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Image.asset(aquamanpost),
    );
  }
}
