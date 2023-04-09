import 'package:academy/constants/color.dart';
import 'package:academy/constants/icons.dart';
import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  const AvatarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            icPerson,
            width: 80,
            height: 80,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Recep Şengül", style: kLargeText),
          ],
        )
      ],
    );
  }
}
