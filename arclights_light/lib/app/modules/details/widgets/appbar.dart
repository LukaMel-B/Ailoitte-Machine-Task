import 'package:arclights_light/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarDetails {
  var detailsAppBar = AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Container(
        margin: const EdgeInsets.all(5),
        width: 50,
        decoration: const BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            )),
      )
    ],
    leading: Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(right: 5),
      width: 60,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: IconButton(
          onPressed: () {
            Get.back(result: Get.find<HomeController>().refreshRecents());
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          )),
    ),
    centerTitle: true,
  );
}
