import 'package:academy/constants/color.dart';
import 'package:flutter/material.dart';

import '../constants/icons.dart';
import '../models/comments.dart';

class CommendCard extends StatelessWidget {
  final Comment comment;
  const CommendCard({Key? key, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          comment.upvote,
          style: kSmallText,
        ),
        Icon(
          Icons.arrow_upward,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(comment.downvote, style: kSmallText),
        Icon(
          Icons.arrow_downward,
          color: Colors.white,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(comment.name, style: kVerySmallText),
              SizedBox(height: 5),
              Text(comment.duration, style: kVerySmallText),
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
