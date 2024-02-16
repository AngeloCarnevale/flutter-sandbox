import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(pages: [
            Container(
              color: tOnBoardingPage1Color,
              child: Column(
                children: [
                  Image(image: AssetImage(tOnBoardingImage1)),
                  Text("ijasidaij aodopaskoda ok"),
                  Text("jasdjjasidjiajsd"),
                ],
              ),
            ),
            Container(color: tOnBoardingPage2Color),
            Container(color: tOnBoardingPage3Color),
          ])
        ],
      ),
    );
  }
}
