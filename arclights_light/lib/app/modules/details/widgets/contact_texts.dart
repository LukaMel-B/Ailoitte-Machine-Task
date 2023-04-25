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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sixh20,
        Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
        sixh5,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: (title == 'Alcoholic' ||
                            title == 'Glass' ||
                            title == 'Category')
                        ? 18
                        : 15,
                    fontWeight: (title == 'Alcoholic' ||
                            title == 'Glass' ||
                            title == 'Category')
                        ? FontWeight.bold
                        : FontWeight.w600),
              ),
            ),
          ],
        )
      ],
    );
  }
}
