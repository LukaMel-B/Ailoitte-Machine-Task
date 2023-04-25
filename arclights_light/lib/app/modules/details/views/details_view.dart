import 'dart:developer';

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
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2.4,
                child: ListView.builder(
                  itemCount: DetailsList().detailsList.length,
                  itemBuilder: (context, index) {
                    log(DetailsList().detailsList[index].title.toString());
                    return (DetailsList().detailsList[index].content == '')
                        ? const SizedBox()
                        : ContactTexts(
                            text: DetailsList().detailsList[index].content,
                            title: DetailsList().detailsList[index].title);
                  },
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
