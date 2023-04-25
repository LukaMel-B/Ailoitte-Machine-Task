import 'package:arclights_light/app/modules/details/widgets/bottom_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          BottomButton(
              text: 'Share location',
              icon: CupertinoIcons.location,
              color: Color(0xff443EF5)),
          BottomButton(
              text: 'Qr code',
              icon: Icons.qr_code_2_rounded,
              color: Color(0xffD9DBE9)),
          BottomButton(
              text: 'Share link',
              icon: CupertinoIcons.link,
              color: Color.fromARGB(255, 79, 227, 187)),
        ],
      ),
    );
  }
}
