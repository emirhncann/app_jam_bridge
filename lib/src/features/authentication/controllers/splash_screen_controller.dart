import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:peermatching/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:peermatching/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(OnBoardingScreen());
    //Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => App()));
  }
}
