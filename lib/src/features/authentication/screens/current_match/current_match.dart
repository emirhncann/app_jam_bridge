import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peermatching/src/features/authentication/screens/main/mainpage.dart';
import 'package:peermatching/src/features/authentication/screens/rate_page/rate_page.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentMatchPage extends StatefulWidget {
  const CurrentMatchPage({super.key});

  @override
  State<CurrentMatchPage> createState() => _CurrentMatchPageState();
}

class _CurrentMatchPageState extends State<CurrentMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Güncel Eşleşme",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                    top: 111,
                    left: 39,
                    child: Container(
                        width: 164,
                        height: 164,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image.network(
                            'https://ca.slack-edge.com/T02LKGXV98C-U04CQMVPSNS-7b4f1a9c4f3e-512',
                            fit: BoxFit.cover,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                          color: Color.fromRGBO(229, 229, 229, 1),
                          border: Border.all(
                            color: Color.fromRGBO(123, 97, 255, 1),
                            width: 1,
                          ),
                        ))),
                Positioned(
                    top: 163,
                    left: 180,
                    child: Container(
                        width: 164,
                        height: 164,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image.network(
                            'https://ca.slack-edge.com/T02LKGXV98C-U04CZSCNLF6-23f1c05a3734-512',
                            fit: BoxFit.cover,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                          color: Color.fromRGBO(229, 229, 229, 1),
                          border: Border.all(
                            color: Color.fromRGBO(123, 97, 255, 1),
                            width: 1,
                          ),
                        ))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Güncel Eşleşmeniz',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(123, 97, 255, 1),
              ),
            ),

            const Icon(Icons.handshake_rounded, size: 50),
            //////////////////////////////  Kullanıcı adı Anıl'ın sayfasından gelecek ///////////////////////////////
            const Text(
              'Arınç Şentürk',
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(123, 97, 255, 1)),
            ),
            //////////////////////////////// Kullanıcı puanı Anıl'ın sayfasından gelecek ////////////////////////////////
            SizedBox(height: 30),
            Text(
              'Konu',
              style: TextStyle(
                letterSpacing: (2),
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(88, 37, 230, 1),
              ),
            ),
            ///////////////////////////// Konu adı Aleyna'nın sayfasından gelecek //////////////////////////////
            Text(
              'TikTok HomePage Clone',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(123, 97, 255, 1),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Get.to(() => RatePage());
              },
              child: Text(
                'Değerlendir',
                style: TextStyle(
                  letterSpacing: (2),
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(88, 37, 230, 1),
                ),
              ),
            ),
            ////////////////// Slack ismi Arınç'ın sayfasında gelecek////////////////////
            _slackbutton(),
            _okbutton(),
            _endbutton(),
          ],
        ),
      ),
    );
  }

  SizedBox _okbutton() {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => mainpage());
        },
        child: Text(
          'Tamamlandı',
        ),
      ),
    );
  }

  SizedBox _endbutton() {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => mainpage());
        },
        child: Text(
          'Eşleşmeyi Bitir',
        ),
      ),
    );
  }

  SizedBox _slackbutton() {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () async {
          const url = "www.slack.com";
          final Uri uri = Uri(scheme: 'https', host: url);
          if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
            throw 'Ulaşılamıyor.';
          }
        },
        child: Text(
          'Slack',
        ),
      ),
    );
  }
}
