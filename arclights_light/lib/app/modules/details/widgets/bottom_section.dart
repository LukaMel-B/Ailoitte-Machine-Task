import 'package:arclights_light/app/modules/details/controllers/details_controller.dart';
import 'package:arclights_light/app/modules/details/widgets/bottom_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class StringFunction {
  String checkForNullMes() {
    var finalData = '';
    String base =
        'Measure 1: ${Get.find<DetailsController>().drink.strMeasure1!}';
    if (Get.find<DetailsController>().drink.strMeasure2 != null) {
      final newData =
          '\nMeasure 2: ${Get.find<DetailsController>().drink.strMeasure2!}';
      finalData = base + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure3 != null) {
      final newData =
          '\nMeasure 3: ${Get.find<DetailsController>().drink.strMeasure3!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure4 != null) {
      final newData =
          '\nMeasure 4: ${Get.find<DetailsController>().drink.strMeasure4!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure5 != null) {
      final newData =
          '\nMeasure 5: ${Get.find<DetailsController>().drink.strMeasure5!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure6 != null) {
      final newData =
          '\nMeasure 6: ${Get.find<DetailsController>().drink.strMeasure6!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure7 != null) {
      final newData =
          '\nMeasure 7: ${Get.find<DetailsController>().drink.strMeasure7!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure8 != null) {
      final newData =
          '\nMeasure 8: ${Get.find<DetailsController>().drink.strMeasure8!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure9 != null) {
      final newData =
          '\nMeasure 9: ${Get.find<DetailsController>().drink.strMeasure9!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure10 != null) {
      final newData =
          '\nMeasure 10: ${Get.find<DetailsController>().drink.strMeasure10!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure11 != null) {
      final newData =
          '\nMeasure 11: ${Get.find<DetailsController>().drink.strMeasure11!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure12 != null) {
      final newData =
          '\nMeasure 12: ${Get.find<DetailsController>().drink.strMeasure12!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure13 != null) {
      final newData =
          '\nMeasure 13: ${Get.find<DetailsController>().drink.strMeasure13!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure14 != null) {
      final newData =
          '\nMeasure 14: ${Get.find<DetailsController>().drink.strMeasure14!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strMeasure15 != null) {
      final newData =
          '\nMeasure 15: ${Get.find<DetailsController>().drink.strMeasure15!}';
      finalData = finalData + newData;
    }
    return finalData;
  }

  String checkForNullIng() {
    var finalData = '';
    String base =
        'Ingredient 1: ${Get.find<DetailsController>().drink.strIngredient1!}';
    if (Get.find<DetailsController>().drink.strIngredient2 != null) {
      final newData =
          '\nIngredient 2: ${Get.find<DetailsController>().drink.strIngredient2!}';
      finalData = base + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient3 != null) {
      final newData =
          '\nIngredient 3: ${Get.find<DetailsController>().drink.strIngredient3!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient4 != null) {
      final newData =
          '\nIngredient 4: ${Get.find<DetailsController>().drink.strIngredient4!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient5 != null) {
      final newData =
          '\nIngredient 5: ${Get.find<DetailsController>().drink.strIngredient5!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient6 != null) {
      final newData =
          '\nIngredient 6: ${Get.find<DetailsController>().drink.strIngredient6!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient7 != null) {
      final newData =
          '\nIngredient 7: ${Get.find<DetailsController>().drink.strIngredient7!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient8 != null) {
      final newData =
          '\nIngredient 8: ${Get.find<DetailsController>().drink.strIngredient8!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient9 != null) {
      final newData =
          '\nIngredient 9: ${Get.find<DetailsController>().drink.strIngredient9!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient10 != null) {
      final newData =
          '\nIngredient 10: ${Get.find<DetailsController>().drink.strIngredient10!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient11 != null) {
      final newData =
          '\nIngredient 11: ${Get.find<DetailsController>().drink.strIngredient11!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient12 != null) {
      final newData =
          '\nIngredient 12: ${Get.find<DetailsController>().drink.strIngredient12!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient13 != null) {
      final newData =
          '\nIngredient 13: ${Get.find<DetailsController>().drink.strIngredient13!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient14 != null) {
      final newData =
          '\nIngredient 14: ${Get.find<DetailsController>().drink.strIngredient14!}';
      finalData = finalData + newData;
    }
    if (Get.find<DetailsController>().drink.strIngredient15 != null) {
      final newData =
          '\nIngredient 15: ${Get.find<DetailsController>().drink.strIngredient15!}';
      finalData = finalData + newData;
    }
    return finalData;
  }
}
