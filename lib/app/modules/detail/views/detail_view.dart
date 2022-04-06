import 'package:carousel_slider/carousel_slider.dart';
import 'package:deanime/app/constants/Color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Action'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/detail/Bg.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Get.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Color(0xff070D2D).withOpacity(0.05),
                    Color(0xff070D2D).withOpacity(0.04),
                    Color(0xff0070D2D).withOpacity(1),
                    Color(0xff0070D2D),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.slider.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          controller.controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color.fromARGB(255, 110, 110, 110))
                                    .withOpacity(controller.current == entry.key
                                        ? 0.9
                                        : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                CarouselSlider(
                  items: controller.slider,
                  carouselController: controller.controller,
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 1,
                      onPageChanged: (index, reason) {
                        controller.current.value = index;
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
