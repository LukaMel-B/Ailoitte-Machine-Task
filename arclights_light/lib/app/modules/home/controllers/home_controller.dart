import 'package:arclights_light/app/data/models/drinks_model.dart';
import 'package:arclights_light/app/data/providers/drinks_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Drinks> drinks = [];
  List sortedDrinks = [].obs;
  List<Map<String, dynamic>> recentList = [];
  var isLoaded = false.obs;
  var searchText = ''.obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  fetchData() async {
    await DrinksProvider().getDrinks();
    update();
  }

  sortList(String search) {
    if (search != '') {
      final sorts = drinks.where((element) {
        final nameLower = element.strDrink!.toLowerCase();
        final searching = search.toLowerCase();
        return nameLower.contains(searching);
      }).toList();
      sortedDrinks = sorts;
    }
    // sortedDrinks.retainWhere((s) {
    //   return s.strDrink!.toLowerCase().contains(search.toLowerCase());
    // });
  }

  addToRecents({required Drinks drink}) {
    bool isfound = false;
    for (Map<String, dynamic> element in recentList) {
      final Drinks temp = element['data'];
      if (temp.idDrink!.toString() == drink.idDrink!.toString()) {
        element['time'] = DateTime.now();
        isfound = true;
        break;
      }
    }
    if (isfound == true) {
      return;
    }

    final map = {"data": drink, "time": DateTime.now()};
    recentList.add(map);
    // log(DateTime.now().toString());
    update();
  }

  refreshRecents() {
    for (Map<String, dynamic> element in recentList) {
      var sample = element['time'];
      element['time'] = DateTime.now();
      element['time'] = sample;
      update();
    }
  }

  getRecentTime({required DateTime data}) {
    DateTime currentTime = DateTime.now();
    int diff = currentTime.minute - data.minute;
    if (diff <= 0) {
      diff = currentTime.second - data.second;
      return "$diff sec ago";
    }
    return "$diff min ago";
  }
}
