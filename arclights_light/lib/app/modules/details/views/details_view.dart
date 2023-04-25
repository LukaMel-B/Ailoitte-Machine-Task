import 'package:arclights_light/app/modules/consts/sizedbox_consts.dart';
import 'package:arclights_light/app/modules/details/controllers/details_controller.dart';
import 'package:arclights_light/app/modules/details/widgets/appbar.dart';
import 'package:arclights_light/app/modules/details/widgets/bottom_section.dart';
import 'package:arclights_light/app/modules/details/widgets/buttons_section.dart';
import 'package:arclights_light/app/modules/details/widgets/contact_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDetails().detailsAppBar,
      body: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            DetailsWidget(drink: controller.drink),
            sixh10,
            Container(
              color: const Color.fromARGB(255, 241, 241, 241),
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Flexible(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ContactTexts(
                        text: controller.drink.strAlcoholic!, title: 'Email'),
                    ContactTexts(
                        text: controller.drink.strGlass.toString(),
                        title: 'Age'),
                    ContactTexts(
                        text: controller.drink.strAlcoholic!, title: 'Address'),
                    ContactTexts(
                        text: controller.drink.strCategory.toString(),
                        title: 'Salary'),
                    sixh10,
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: const BottomSection(),
    );
  }
}
