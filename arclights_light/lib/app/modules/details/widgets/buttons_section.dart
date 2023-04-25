import 'package:arclights_light/app/data/models/drinks_model.dart';
import 'package:arclights_light/app/modules/consts/sizedbox_consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsWidget extends GetView {
  final Drinks drink;
  const DetailsWidget({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          sixh7,
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.only(right: 5),
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: NetworkImage(drink.strDrinkThumb!)),
                borderRadius: const BorderRadius.all(Radius.circular(30))),
          ),
          sixh8,
          Text(
            drink.strDrink!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            drink.strCategory!,
            style: const TextStyle(fontSize: 15, letterSpacing: 1),
          ),
          const SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     const SizedBox(width: 20),
          //     ContactButtons(
          //         icon: CupertinoIcons.chat_bubble_text,
          //         color: const Color.fromARGB(255, 0, 190, 127)),
          //     ContactButtons(
          //         icon: CupertinoIcons.phone,
          //         color: const Color.fromARGB(255, 34, 153, 250)),
          //     ContactButtons(
          //         icon: CupertinoIcons.videocam,
          //         color: const Color.fromARGB(255, 247, 88, 77)),
          //     ContactButtons(
          //         iconColor: Colors.black,
          //         icon: CupertinoIcons.mail,
          //         color: const Color.fromARGB(255, 213, 210, 230)),
          //     const SizedBox(width: 20),
          //   ],
          // )
        ],
      ),
    );
  }
}
