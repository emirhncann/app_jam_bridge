import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:peermatching/src/constants/colors.dart';
import 'package:peermatching/src/constants/image_strings.dart';
import 'package:peermatching/src/constants/sizes.dart';
import 'package:peermatching/src/constants/text_strings.dart';
import 'package:peermatching/src/features/authentication/screens/signup/signup_screen.dart';

import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(image: AssetImage(tWelcomeScreenImage), height: height * 0.5),
            Column(
              children: [
                Text(
                  tWelcomeTitle,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  tWelcomeSubTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text(tLogin.toUpperCase()),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const SignUpScreen()),
                      child: Text(tSignup.toUpperCase()),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
