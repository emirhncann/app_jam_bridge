import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:peermatching/main/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:peermatching/src/features/authentication/screens/main/mainpage.dart';

class RatePage extends StatefulWidget {
  const RatePage({
    Key? key,
  }) : super(key: key);

  @override
  _RatePageState createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
  double _rating1 = 5;
  double _rating2 = 5;
  double _rating3 = 5;
  static String username = "Emirhan Can";
  String sonuc = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Değerlendir",
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  width: 164,
                  height: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(
                      color: Color.fromRGBO(123, 97, 255, 1),
                      width: 1.0,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image.network(
                      'https://ca.slack-edge.com/T02LKGXV98C-U04CQMVPSNS-7b4f1a9c4f3e-512',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  '$username ile proje nasıl gidiyor?',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(123, 97, 255, 1)),
                ),
                //1. puanlama
                const SizedBox(height: 40),
                const Text(
                  'Kullanıcı ile iletişim kurabildim.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(123, 97, 255, 1),
                  ),
                ),
                const SizedBox(height: 5),
                RatingBar.builder(
                  initialRating: _rating1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color.fromRGBO(255, 122, 0, 1),
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating1 = rating;
                    });
                  },
                ),

                //2. puanlama
                const SizedBox(height: 20),
                const Text(
                  'Kullanıcı proje üzerinde özenli çalıştı.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(123, 97, 255, 1),
                  ),
                ),
                const SizedBox(height: 5),
                RatingBar.builder(
                  initialRating: _rating2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color.fromRGBO(255, 122, 0, 1),
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating2 = rating;
                    });
                  },
                ),

                //3. puanlama
                const SizedBox(height: 20),
                const Text(
                  'Kullanıcı görevlerini zamanında tamamladı.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(123, 97, 255, 1),
                  ),
                ),
                const SizedBox(height: 5),
                RatingBar.builder(
                  initialRating: _rating3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color.fromRGBO(255, 122, 0, 1),
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating3 = rating;
                    });
                  },
                ),

                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    double calculatedRate =
                        (_rating1 + _rating2 + _rating3) / 3;
                    setState(
                      () {
                        sonuc = calculatedRate.toStringAsFixed(1);
                      },
                    );
                    Get.to(mainpage());
                  },
                  child: const Text('Gönder'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
