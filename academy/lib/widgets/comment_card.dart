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
        Text(comment.upvote),
        Icon(Icons.arrow_upward),
        const SizedBox(
          width: 15,
        ),
        Text(comment.downvote),
        Icon(Icons.arrow_downward),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                comment.duration,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
