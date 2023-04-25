import 'package:arclights_light/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarDetails {
  var detailsAppBar = AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15, top: 5, bottom: 5, left: 5),
        child: Container(
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
        ),
      )
    ],
    leading: Padding(
      padding: const EdgeInsets.only(right: 5, top: 5, bottom: 5, left: 8),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(17))),
          child: InkWell(
            onTap: () {
              Get.back(result: Get.find<HomeController>().refreshRecents());
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          )),
    ),
    centerTitle: true,
  );
}
