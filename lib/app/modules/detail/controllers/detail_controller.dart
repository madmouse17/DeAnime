import 'package:deanime/app/constants/Color.dart';
import 'package:deanime/app/widgets/cardSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_controller.dart';

class DetailController extends GetxController {
  List<Widget> slider = [
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Image.asset("assets/detail/aot.png"),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Attack On Titan',
              style: Get.textTheme.headline5,
            ),
          ),
          Container(
            width: Get.width / 2.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset('assets/detail/save.png'),
                      Text('Save')
                    ],
                  ),
                ),
                Image.asset('assets/detail/star.png'),
                Text('9.14')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Continue To Watch"),
              style: ElevatedButton.styleFrom(
                  shadowColor: secondaryColor, primary: secondaryColor),
            ),
          )
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Image.asset("assets/detail/aot.png"),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Attack On Titan',
              style: Get.textTheme.headline5,
            ),
          ),
          Container(
            width: Get.width / 2.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset('assets/detail/save.png'),
                      Text('Save')
                    ],
                  ),
                ),
                Image.asset('assets/detail/star.png'),
                Text('9.14')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Continue To Watch"),
              style: ElevatedButton.styleFrom(
                  shadowColor: secondaryColor, primary: secondaryColor),
            ),
          )
        ],
      ),
    ),
  ];
  //TODO: Implement DetailController
  var current = 0.obs;
  final CarouselController controller = CarouselController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
