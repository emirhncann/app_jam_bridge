import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peermatching/src/features/authentication/screens/main/mainpage.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MatchScreen(),
    );
  }
}

class MatchScreen extends StatelessWidget {
  @override
  static String username1 = "Emirhan Can";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 375,
          height: 812,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: 558,
                left: 55,
                child: Container(
                    width: 269,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 23,
                          left: 96.4595947265625,
                          child: Text(
                            'Button',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Inter',
                                fontSize: 18,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: -9.520000457763672,
                          left: -6.724999904632568,
                          child: Container(
                              width: 285.1400146484375,
                              height: 87.03999328613281,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Color.fromRGBO(208, 209, 215, 1),
                              ))),
                    ]))),
            Positioned(
                top: 583,
                left: 104,
                child: Container(
                    width: 84,
                    height: 21,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Slack_Technologies_Logo.svg/2560px-Slack_Technologies_Logo.svg.png'),
                          fit: BoxFit.fitWidth),
                    ))),
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
            Positioned(
                top: 775,
                left: 0,
                child: Container(
                    width: 375,
                    height: 37,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 375,
                              height: 37,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 375,
                                        height: 37,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(215, 215, 215, 1),
                                        ))),
                                Positioned(
                                    top: 0,
                                    left: 150,
                                    child: Container(
                                        width: 135,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(3),
                                            topRight: Radius.circular(3),
                                            bottomLeft: Radius.circular(3),
                                            bottomRight: Radius.circular(3),
                                          ),
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ))),
                              ]))),
                    ]))),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 375,
                    height: 48,
                    decoration: BoxDecoration(),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 375,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 375,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(245, 245, 245, 1),
                                        ))),
                                Positioned(
                                    top: 17.7391300201416,
                                    left: 294,
                                    child: Container(
                                        width: 68,
                                        height: 12.521739959716797,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0.3333333432674408,
                                              left: 43,
                                              child: Container(
                                                  width: 24.32803726196289,
                                                  height: 11.333333015441895,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 22,
                                                                height:
                                                                    11.333333015441895,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            2.6666667461395264),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            2.6666667461395264),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            2.6666667461395264),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            2.6666667461395264),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                      ]))),
                                        ]))),
                              ]))),
                    ]))),
            const Positioned(
                top: 353,
                left: 40,
                child: Text(
                  'Arınç Şentürk Eşleşme Bulundu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(87, 37, 230, 1),
                      fontFamily: 'Raleway',
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                      height: 1.2727272727272727),
                )),
            Positioned(
                top: 406,
                left: 150,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: const Text(
                      'Kullanıcı Puanı',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(87, 37, 230, 1),
                          fontFamily: 'DM Sans',
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 30,
                        ),
                        Text("4.9"),
                      ],
                    ),
                  ),
                ])),
            const Positioned(
                top: 499,
                left: 85,
                child: Text(
                  'Konu : Tiktok Homepage Clone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(87, 37, 230, 1),
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.2727272727272727),
                )),
            Positioned(
                top: 582,
                left: 200,
                child: GestureDetector(
                    onTap: () async {
                      const url = "www.slack.com";
                      final Uri uri = Uri(scheme: 'https', host: url);
                      if (!await launchUrl(uri,
                          mode: LaunchMode.externalApplication)) {
                        throw 'Ulaşılamıyor.';
                      }
                    },
                    child: Text(
                      'ile Eşleş',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(57, 63, 69, 1),
                          fontFamily: 'DM Sans',
                          fontSize: 18,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.2222222222222223),
                    ))),
            Positioned(
                top: 647,
                left: 118,
                child: Container(
                    width: 143,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 23,
                          left: 51.27777862548828,
                          child: Text(
                            'Button',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Inter',
                                fontSize: 18,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: -9.520000457763672,
                          left: -3.575000047683716,
                          child: Container(
                              width: 151.5800018310547,
                              height: 87.03999328613281,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Color.fromRGBO(208, 209, 215, 1),
                              ))),
                    ]))),
            Positioned(top: 670, left: 139, child: Icon(Icons.close)),
            Positioned(
                top: 658,
                left: 163,
                child: TextButton(
                  onPressed: () {
                    Get.to(mainpage());
                  },
                  child: const Text(
                    'Reddet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(57, 63, 69, 1),
                        fontFamily: 'DM Sans',
                        fontSize: 18,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.2222222222222223),
                  ),
                )),
          ])),
    );
  }
}
