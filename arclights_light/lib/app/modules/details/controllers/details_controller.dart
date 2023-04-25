import 'package:arclights_light/app/data/models/drinks_model.dart';
import 'package:arclights_light/app/modules/details/widgets/bottom_section.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final Drinks drink = Get.arguments;
}

class DetailsClass {
  final String title;
  final String content;

  DetailsClass({required this.title, required this.content});
}

class DetailsList {
  List<DetailsClass> detailsList = [
    DetailsClass(
        title: 'Alcoholic',
        content: Get.find<DetailsController>().drink.strAlcoholic!),
    DetailsClass(
        title: 'Glass', content: Get.find<DetailsController>().drink.strGlass!),
    DetailsClass(
        title: 'Category',
        content: Get.find<DetailsController>().drink.strCategory!),
    DetailsClass(
        title: 'Instructions',
        content: Get.find<DetailsController>().drink.strInstructions!),
    checkNull(Get.find<DetailsController>().drink.strInstructionsDE,
        'Instructions - DE'),
    checkNull(Get.find<DetailsController>().drink.strInstructionsIT,
        'Instructions - IT'),
    checkNull(Get.find<DetailsController>().drink.strInstructionsES,
        'Instructions - ES'),
    checkNull(Get.find<DetailsController>().drink.strInstructionsFR,
        'Instructions - FR'),
    checkNull(Get.find<DetailsController>().drink.strInstructionsZHHANS,
        'Instructions - ZHHANS'),
    checkNull(Get.find<DetailsController>().drink.strInstructionsZHHANT,
        'Instructions - ZHHANT'),
    DetailsClass(
        title: 'Ingredients', content: StringFunction().checkForNullIng()),
    DetailsClass(
        title: 'Measures', content: StringFunction().checkForNullMes()),
  ];
}

DetailsClass checkNull(dynamic data, String title) {
  if (data != null) {
    return DetailsClass(title: title, content: data);
  } else {
    return DetailsClass(title: '', content: '');
  }
}
