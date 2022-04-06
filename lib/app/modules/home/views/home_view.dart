import 'package:deanime/app/constants/Color.dart';
import 'package:deanime/app/routes/app_pages.dart';
import 'package:deanime/app/widgets/cardSlider.dart';
import 'package:deanime/app/widgets/cardTextDetail.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: secondaryColor,
                radius: 30,
                child: CircleAvatar(
                    backgroundColor: secondaryColor,
                    radius: 25,
                    child: Image.asset('assets/home/Ellipse_12.png')),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: Get.height * 0.038,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: secondaryColor),
                child: Text(
                  "Hy, Anonim",
                  style: TextStyle(fontSize: Get.height * 0.019),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: thirdColor),
            child: Image.asset('assets/home/Heart.png'),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: thirdColor),
            child: Image.asset('assets/home/Notification.png'),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Cari anime Kesukaan Anda",
                  prefixIcon: Image.asset('assets/home/search.png'),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Genre Terbaik',
                style: Get.textTheme.headline5,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardTextSlider(
                    text: "Action",
                    onTap: () {},
                  ),
                  CardTextSlider(
                    text: "Romance",
                    onTap: () {},
                  ),
                  CardTextSlider(
                    text: "Comedy",
                    onTap: () {},
                  ),
                  CardTextSlider(
                    text: "Fantasy",
                    onTap: () {},
                  ),
                  CardTextSlider(
                    text: "HiFi",
                    onTap: () {},
                  ),
                  CardTextSlider(
                    text: "Animate",
                    onTap: () {},
                  )
                ],
              ),
            ),
            Text(
              "Episode Terbaru",
              style: Get.textTheme.headline6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardSlider(
                      onLove: () {},
                      onTap: () => Get.toNamed(Routes.DETAIL),
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "8.5"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "One Piece",
                      image: 'assets/home/OP.png',
                      textStar: "9"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Kimetsu No Yeiba",
                      image: 'assets/home/kimetsu.png',
                      textStar: "7.5"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "9.14"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "9.14"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "9.14"),
                ],
              ),
            ),
            Text(
              "Terlaris Sepanjang Masa",
              style: Get.textTheme.headline6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Dragon Ball Super Saiya",
                      image: 'assets/home/dragonball.png',
                      textStar: "8.5"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Kimetsu No Yeiba",
                      image: 'assets/home/kimetsu2.png',
                      textStar: "9"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Gintama",
                      image: 'assets/home/Rectangle_11.png',
                      textStar: "7.5"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "9.14"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "9.14"),
                  CardSlider(
                      onLove: () {},
                      onTap: () {},
                      title: "Shingeki No Kyoujin",
                      image: 'assets/home/aot.png',
                      textStar: "9.14"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
