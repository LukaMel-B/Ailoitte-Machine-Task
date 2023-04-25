import 'package:arclights_light/app/modules/consts/sizedbox_consts.dart';
import 'package:arclights_light/app/modules/details/widgets/contact_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomButton extends GetView {
  final Color color;
  final String text;
  final IconData icon;
  const BottomButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ContactButtons(icon: icon, color: color),
          sixh5,
          Text(
            text,
            style: const TextStyle(
                color: Colors.black45, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
