import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:peermatching/src/constants/colors.dart';
import 'package:peermatching/src/constants/image_strings.dart';
import 'package:peermatching/src/constants/sizes.dart';
import 'package:peermatching/src/constants/text_strings.dart';
import 'package:peermatching/src/features/authentication/models/model_on_boarding.dart';
import 'package:peermatching/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:peermatching/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnBoardingImage1,
              title: tOnBoardingTitle1,
              subTitle: tOnBoardingSubTitle1,
              counterText: tOnBoardingCounter1,
              height: size.height,
              bgColor: tOnBoardingPage1Color)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnBoardingImage2,
              title: tOnBoardingTitle2,
              subTitle: tOnBoardingSubTitle2,
              counterText: tOnBoardingCounter2,
              height: size.height,
              bgColor: tOnBoardingPage2Color)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnBoardingImage3,
              title: tOnBoardingTitle3,
              subTitle: tOnBoardingSubTitle3,
              counterText: tOnBoardingCounter3,
              height: size.height,
              bgColor: tOnBoardingPage3Color))
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: OnPageChangedCallBack,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () {
                  int nextPage = controller.currentPage + 1;
                  controller.animateToPage(page: nextPage);
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    onPrimary: Colors.white),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                      color: tDarkColor, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => Get.to(const WelcomeScreen()),
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Color(0xff272727), dotHeight: 5.0),
              ))
        ],
      ),
    );
  }

  void OnPageChangedCallBack(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
