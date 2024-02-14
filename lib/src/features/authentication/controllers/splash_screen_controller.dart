import 'package:flutter/material.dart';
import 'package:gamingapp/src/features/authentication/screens/on_boarding_screens/on_bording_screen.dart';
import 'package:gamingapp/src/features/authentication/screens/splash_screen/welcome.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false
      .obs; //when you change the animation, all the screens can change this animation has

  Future startAnimation() async {
    await Future.delayed(
        const Duration(milliseconds: 500)); // Reduce delay time
    animate.value = true;
    await Future.delayed(
        const Duration(milliseconds: 5000)); // Adjusted delay time
    Get.to(OnBordingScreen());
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => const Welcome()),
    // );
  }
}
// class SplashScreenController extends StatelessWidget {
//   const SplashScreenController({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }