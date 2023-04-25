import 'package:arclights_light/app/data/models/drinks_model.dart';
import 'package:arclights_light/app/modules/consts/sizedbox_consts.dart';
import 'package:arclights_light/app/modules/details/bindings/details_binding.dart';
import 'package:arclights_light/app/modules/details/views/details_view.dart';
import 'package:arclights_light/app/modules/home/controllers/home_controller.dart';
import 'package:arclights_light/app/modules/home/widgets/appbar_home.dart';
import 'package:arclights_light/app/modules/home/widgets/listile_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarHome,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: (value) {
                  controller.sortList(value);
                  controller.searchText.value = value;
                  controller.update();
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              sixh30,
              const Text("Recently viewed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 350,
                  height: 125,
                  child: GetBuilder<HomeController>(builder: (_) {
                    return controller.recentList.isEmpty
                        ? const Center(
                            child: Text("No recent views",
                                style: TextStyle(fontSize: 18)))
                        : ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: controller.recentList.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 20);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              final Drinks data =
                                  controller.recentList[index]['data'];
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => const DetailsView(),
                                          transition: Transition.cupertino,
                                          arguments: data,
                                          binding: DetailsBinding());
                                    },
                                    child: Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(data
                                                  .strDrinkThumb
                                                  .toString())),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 5),
                                      child: Text(
                                        data.strDrink.toString(),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    controller
                                        .getRecentTime(
                                            data: controller.recentList[index]
                                                ['time'])
                                        .toString(),
                                  )
                                ],
                              );
                            },
                          );
                  })),
              sixh20,
              const Text("Drinks",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              sixh20,
              Obx(() {
                return (!controller.isLoaded.value)
                    ? const Center(
                        child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator()),
                      )
                    : (controller.sortedDrinks.isEmpty)
                        ? const Center(child: Text('No datas Available'))
                        : SizedBox(
                            height: MediaQuery.of(context).size.height / 2.4,
                            child: Obx(() {
                              return ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return (controller.searchText.value != '' &&
                                          controller.sortedDrinks.isEmpty)
                                      ? SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2,
                                          child: const Center(
                                            child: Text("No drinks found!",
                                                style: TextStyle(fontSize: 18)),
                                          ),
                                        )
                                      : (controller.searchText.value == '')
                                          ? customWidget(
                                              controller.drinks[index])
                                          : customWidget(
                                              controller.sortedDrinks[index]);
                                },
                                itemCount: (controller.searchText.value != '' &&
                                        controller.sortedDrinks.isEmpty)
                                    ? 1
                                    : (controller.searchText.value == '')
                                        ? controller.drinks.length
                                        : controller.sortedDrinks.length,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 10,
                                  );
                                },
                              );
                            }),
                          );
              }),
            ],
          )),
        ));
  }
}
