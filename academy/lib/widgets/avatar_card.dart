import 'package:academy/constants/color.dart';
import 'package:academy/constants/icons.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

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
            "lib/assets/images/denizpp.jpg",
            width: 80,
            height: 80,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Aslı Deniz Ürersoy", style: kLargeText),
          ],
        )
      ],
    );
  }
}
