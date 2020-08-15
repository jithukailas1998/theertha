import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(More());

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "More",
      home: Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          title: Text("More"),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 4)),
                SizedBox(
                  width: double.infinity,
                  height: 590,
                  child: Container(
                      width: double.infinity,
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 6.0, right: 6, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: const EdgeInsets.all(3)),
                            Image.asset("assets/logo.png",
                                width: 100, height: 100),
//                          Padding(
//                              padding: const EdgeInsets.all(5)
//                          ),
                            new Text(
                              "Theertha Mill Products",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  letterSpacing: 0.4,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: '        THEERTHA MILL PRODUCTS ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'is a small attempt to harness the goodness of nature '
                                          'for human well-being from the neighborhood of'
                                          ' the biggest underground Hydro-electric power station in India -',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  TextSpan(text: 'MOOLAMATTOM.'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: '        We at ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'THEERTHA MILL PRODUCTS ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          ' caters to providing a diverse range of raw and natural products to uplift the conditions of the planet while enhancing the lives of people, our mission is to provide and to spread goodness via our products.'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: '        The product range includes',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          ' Ameya – Cold pressed Coconut oil, Chilly Powder,Coriander Powder,Turmeric Powder and Spices. ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                            ),
                            Text(
                              "Connect With Us",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            new Text(
                              "13/249 H,High School Junction,",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            new Text(
                              "Moolamattom P.O,",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            new Text(
                              "Idukki (Dist.)Kerala,",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            new Text(
                              "India-685589",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            new Text(
                              "Email theerthamillproducts@gmail.com",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            new Text(
                              "Mobile 8606875001",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () async {
                                    var whatsappUrl =
                                        "whatsapp://send?phone=${918606875001}";
                                    await canLaunch(whatsappUrl)
                                        ? launch(whatsappUrl)
                                        : print(
                                            "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                                  },
                                  child: Image(
                                    image: AssetImage("assets/whatsapp.png"),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    launch("tel://8606875001");
                                  },
                                  //onTap: () {openTwitter();},
                                  child: Image(
                                    image: AssetImage("assets/p.png"),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "mailto:theerthamillproducts@gmail.com");
                                  },
                                  //onTap: () {openWeb();},
                                  child: Image(
                                    image: AssetImage("assets/e.png"),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    openWeb();
                                  },
                                  child: Image(
                                    image: AssetImage("assets/w.png"),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
//                    InkWell(
//                      onTap: () {openInsta();},
//                      child: Image(image: AssetImage("assets/5.png"),),
//                    ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                            ),
                            Text(
                              "Copyright © 2020 | Aidertech Solutions",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/3.png"),
                                  width: 15,
                                  height: 15,
                                ),
                                Text(
                                  " aidertechsolutions@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  openFb() {
    String urll = "https://www.facebook.com";
    launch(urll);
  }

  openTwitter() {
    String urll = "https://twitter.com/explore";
    launch(urll);
  }

  openWeb() {
    String urll = "https://theerthamillproducts.in";
    launch(urll);
  }

  openYoutube() {
    String urll = "https://www.youtube.com/";
    launch(urll);
  }

  openInsta() {
    String urll = "https://www.instagram.com/?hl=en";
    launch(urll);
  }
}
