import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(text: 'Projects', value: 39),
          buildDivider(),
          buildButton(text: 'Following', value: 39),
          buildDivider(),
          buildButton(text: 'Followers', value: 39),
          buildDivider(),
        ],
      );
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton({required String text, required int value}) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$value',
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
            )
          ],
        ),
      );
}
