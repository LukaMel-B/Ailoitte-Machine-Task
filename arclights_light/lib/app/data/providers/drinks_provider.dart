import 'dart:developer';
import 'package:arclights_light/app/data/consts/endpoints.dart';
import 'package:arclights_light/app/data/models/drinks_model.dart';
import 'package:arclights_light/app/modules/home/controllers/home_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DrinksProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Drinks.fromJson(map);
      if (map is List) return map.map((item) => Drinks.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  getDrinks() async {
    try {
      Dio dio = Dio();
      // dio.options.headers["Accept"] = '*/*';
      var response = await dio.get(
        ApiEndpoint.apiUrl,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      log(response.toString());
      DrinksModel drinksModel = drinksFromJson(response.toString());
      Get.find<HomeController>().drinks = drinksModel.drinks!;
      Get.find<HomeController>().sortedDrinks = drinksModel.drinks!;
      Get.find<HomeController>().isLoaded.value = true;
    } catch (e) {
      Get.find<HomeController>().drinks = [];
      Get.find<HomeController>().isLoaded.value = false;
      log(e.toString());
    }
  }
}
