import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardSlider extends StatelessWidget {
  const CardSlider(
      {Key? key,
      required this.onLove,
      required this.onTap,
      required this.title,
      required this.image,
      required this.textStar})
      : super(key: key);
  final String image;
  final String title;
  final Function() onTap;
  final Function() onLove;
  final String textStar;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width / 4,
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(image),
                  Positioned(
                    left: Get.width * 0.01,
                    child: GestureDetector(
                      onTap: onLove,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(123, 0, 0, 0)),
                        child: Image.asset('assets/home/Heart.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                title,
                style: Get.textTheme.subtitle2!.copyWith(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/home/Star.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(textStar),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
