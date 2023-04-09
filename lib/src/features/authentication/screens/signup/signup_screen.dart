import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:peermatching/src/common_widgets/form/form_header_widget.dart';
import 'package:peermatching/src/constants/colors.dart';
import 'package:peermatching/src/constants/image_strings.dart';
import 'package:peermatching/src/constants/sizes.dart';
import 'package:peermatching/src/constants/text_strings.dart';
import 'package:peermatching/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:peermatching/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:peermatching/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:peermatching/src/features/authentication/screens/login/login_screen.dart';
import 'package:peermatching/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignupTitle,
                    subtitle: tSignupSubTitle),
                SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(tGoogleLogoImage),
                            width: 20.0,
                          ),
                          label: Text(tSignInWithGoogle.toUpperCase())),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(text: tLogin.toUpperCase()),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
