import 'package:arclights_light/app/data/models/drinks_model.dart';
import 'package:arclights_light/app/modules/details/bindings/details_binding.dart';
import 'package:arclights_light/app/modules/details/views/details_view.dart';
import 'package:arclights_light/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

HomeController controller = Get.find();
ListTile customWidget(Drinks drink) {
  return ListTile(
    onTap: () {
      controller.addToRecents(drink: drink);
      Get.to(() => const DetailsView(),
          transition: Transition.cupertino,
          arguments: drink,
          binding: DetailsBinding());
    },
    leading: Container(
      width: 60,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(drink.strDrinkThumb.toString()),
              fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
    ),
    title: Text(
      drink.strDrink.toString(),
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(drink.strCategory.toString()),
  );
}
