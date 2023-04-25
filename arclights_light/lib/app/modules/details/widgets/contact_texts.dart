import 'package:arclights_light/app/modules/consts/sizedbox_consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactTexts extends GetView {
  final String title;
  final String text;
  const ContactTexts({Key? key, required this.text, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sixh10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sixh20,
            Text(
              title,
              style: const TextStyle(fontSize: 15),
            ),
            sixh5,
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
