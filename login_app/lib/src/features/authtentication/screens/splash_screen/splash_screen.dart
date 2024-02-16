import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1300),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Image(
                image: AssetImage(tSplashTopIcon),
                width: 100,
              )),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1300),
              top: 100,
              left: animate ? 30 : -30,
              child: AnimatedOpacity(
                  duration: const Duration(microseconds: 1300),
                  opacity: animate ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ))),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1300),
              bottom: animate ? 100 : -100,
              child: AnimatedOpacity(
                  opacity: animate ? 1 : 0,
                  duration: Duration(milliseconds: 1300),
                  child: Image(
                    image: AssetImage(tSplashImage),
                    width: 380,
                  ))),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1300),
              bottom: animate ? 40 : -40,
              right: 10,
              child: AnimatedOpacity(
                opacity: animate ? 1 : 0,
                duration: const Duration(milliseconds: 1300),
                child:Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ))),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(microseconds: 5000));
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome))
  }
}
