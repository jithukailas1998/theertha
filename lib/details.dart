//import 'package:flutter/material.dart';
//import 'package:theertha/Product.dart';
//import 'package:theertha/constants.dart';
//import 'package:theertha/description.dart';
//import 'package:theertha/product_title_with_image.dart';
//
//
//class Bodys extends StatelessWidget {
//  final Product product;
//
//  const Bodys({Key key, this.product}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    // It provide us total height and width
//    Size size = MediaQuery.of(context).size;
//    return SingleChildScrollView(
//      child: Column(
//        children: <Widget>[
//          SizedBox(
//            height: size.height,
//            child: Stack(
//              children: <Widget>[
//                Container(
//                  margin: EdgeInsets.only(top: size.height * 0.3),
//                  padding: EdgeInsets.only(
//                    top: size.height * 0.12,
//                    left: kDefaultPaddin,
//                    right: kDefaultPaddin,
//                  ),
//                  // height: 500,
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(24),
//                      topRight: Radius.circular(24),
//                    ),
//                  ),
//                  child: Column(
//                    children: <Widget>[
//
//                      Description(product: product),
//                      SizedBox(height: kDefaultPaddin / 2),
//
//                    ],
//                  ),
//                ),
//                //ProductTitleWithImage(product: product)
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
import 'package:theertha/Product.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  ProductDetails({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: Container(
        color: Colors.white60,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 100),
                  child: Image.asset(
                    widget.product.image,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
//                            Colors.blueGrey,
//                            Colors.blueGrey,
//                            Colors.blueGrey,
//                            Colors.blueGrey,
//                            Colors.blueGrey,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container())),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container())),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 20, bottom: 40),
                            child: Text(
                              widget.product.title,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, bottom: 40),
                            child: Text(
                              "",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
//                    Row(
//                      children: <Widget>[
//                        Padding(
//                            padding: const EdgeInsets.all(4),
//                            child: Card(
//                              elevation: 10,
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: BorderRadius.circular(20)
//                              ),
//                              child: Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Icon(Icons.shopping_cart),
//                              ),
//                            )
//                        ),
//
//                      ],
//                    ),
                  ],
                ),

//                Positioned.fill(
//                  child: Row(
//                    children: <Widget>[
//                      Container(
//                        decoration: BoxDecoration(
//                            //color: red,
//                            borderRadius: BorderRadius.only(
//                                bottomRight: Radius.circular(35)
//                            )
//                        ),
//                        child: GestureDetector(
//                          onTap: (){
//                            Navigator.pop(context);
//                          },
//                          child: Padding(
//                              padding: const EdgeInsets.all(4.0),
//                              child: IconButton(icon: Icon(Icons.close, color: Colors.white,), onPressed: (){
//                              })
//                          ),
//                        ),
//                      ),
//
//
//                    ],
//                  ),
//                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                        //offset: Offset(2, 5),
                        // blurRadius: 10
                      )
                    ]),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child: Text('Select Color: ', style: TextStyle(color: Colors.white),),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Container(width: 24, height: 24, decoration: BoxDecoration(
//                              color: Colors.black,
//                              borderRadius: BorderRadius.circular(15)
//                          ),
//                            child: Padding(
//                              padding: const EdgeInsets.all(2),
//                              child: CircleAvatar(
//                                backgroundColor: Colors.red,
//                              ),
//                            ),),
//                        ),
//
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Container(width: 24, height: 24, decoration: BoxDecoration(
//                              color: Colors.black,
//                              borderRadius: BorderRadius.circular(15)
//                          ),
//                            child: Padding(
//                              padding: const EdgeInsets.all(2),
//                              child: CircleAvatar(
//                                backgroundColor: Colors.green,
//                              ),
//                            ),),
//                        ),
//
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Container(width: 24, height: 24, decoration: BoxDecoration(
//                              color: Colors.black,
//                              borderRadius: BorderRadius.circular(15)
//                          ),
//                            child: Padding(
//                              padding: const EdgeInsets.all(2),
//                              child: CircleAvatar(
//                                backgroundColor: Colors.orange,
//                              ),
//                            ),),
//                        ),
                        ],
                      ),
                    ),
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(4.0),
//                            child: Text('Select Size: ', style: TextStyle(color: Colors.white)),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(width: 24, height: 24, decoration: BoxDecoration(
//                                color: Colors.black.withOpacity(0.8),
//                                borderRadius: BorderRadius.circular(7)
//                            ),
//                              child: Padding(
//                                padding: const EdgeInsets.all(2),
//                                child: Text('S', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
//                              ),),
//                          ),
//
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(width: 24, height: 24, decoration: BoxDecoration(
//                                color: Colors.black.withOpacity(0.8),
//                                borderRadius: BorderRadius.circular(7)
//                            ),
//                              child: Padding(
//                                padding: const EdgeInsets.all(2),
//                                child: Text('M', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
//                              ),),
//                          ),
//
//
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(width: 24, height: 24, decoration: BoxDecoration(
//                                color: Colors.black.withOpacity(0.8),
//                                borderRadius: BorderRadius.circular(7)
//                            ),
//                              child: Padding(
//                                padding: const EdgeInsets.all(2),
//                                child: Text('L', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
//                              ),),
//                          ),
//
//
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container( height: 24, decoration: BoxDecoration(
//                                color: Colors.black.withOpacity(0.8),
//                                borderRadius: BorderRadius.circular(7)
//                            ),
//                              child: Padding(
//                                padding: const EdgeInsets.all(2),
//                                child: Text('XL', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
//                              ),),
//                          ),
//                        ],
//                      ),
//                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, left: 10),
                        child: Column(
                          children: <Widget>[
                            Text('Description',
                                style:
                                    TextStyle(fontSize: 25, color: Colors.red)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                widget.product.description,
                                textAlign: TextAlign.justify,
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () {
                              launch("tel://8606875001");
                            },
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Contact Us",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),

                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
