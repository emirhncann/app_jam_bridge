import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:get/get.dart';
import 'package:peermatching/main.dart';
import 'package:peermatching/src/constants/text_strings.dart';
import 'package:peermatching/src/features/authentication/screens/current_match/current_match.dart';
import 'package:peermatching/src/features/authentication/screens/exercise/exersices.dart';
import 'package:peermatching/src/features/authentication/screens/match_screen/match.dart';
import 'package:peermatching/src/features/authentication/screens/rate_page/rate_page.dart';

class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  static String username = "Emirhan Can";
  static double mainRate = 4.2;
  double progress = 0.5;

  @override
  Widget build(BuildContext context) {
    final String? args = ModalRoute.of(context)!.settings.arguments as String?;
    String userSubject = "Flutter";
    double newrate = 4.5;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          tAppName,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: const Color.fromRGBO(123, 97, 255, 1),
                    width: 1.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.network(
                    "https://ca.slack-edge.com/T02LKGXV98C-U04CQMVPSNS-7b4f1a9c4f3e-512",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '$username',
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(123, 97, 255, 1)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Text(newrate.toString()),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                '$userSubject İlerleme düzeyiniz.',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(123, 97, 255, 1),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Center(
                    child: FAProgressBar(
                  border:
                      Border.all(color: const Color.fromRGBO(123, 97, 255, 1)),
                  currentValue: 67,
                  animatedDuration: const Duration(milliseconds: 2000),
                  size: 20,
                  displayText: '%',
                  progressColor: const Color.fromRGBO(123, 97, 255, 1),
                )),
              ),
              const SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(MatchScreen());
                      },
                      child: const Text(
                        "Eşleştir",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => CurrentMatchPage());
                        },
                        child: Text("Güncel Eşleşme")),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => ExercisePage());
                        },
                        child: Text("Tamamlanan Egzersizler")),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _MyElevatedButtonStyle {
  static final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromRGBO(209, 210, 215, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    padding: EdgeInsets.zero,
    minimumSize: const Size(0, 0),
  );
}
