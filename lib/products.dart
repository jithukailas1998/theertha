//import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
//
//class  Product extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//    home: Scaffold(
//    appBar: AppBar(
//backgroundColor: Colors.white,
//title: Text("Products",style: TextStyle(color: Colors.deepOrangeAccent),),
//      centerTitle: true,
//),
//body: Products(),
//    ),
//
//    );
//  }
//}
//
//
//class Products extends StatefulWidget {
//  @override
//  _ProductsState createState() => _ProductsState();
//}
//
//class _ProductsState extends State<Products> {
//  var pro_list=[
//    {
//      "name" : "Ameya Oil",
//      "pic":"images/44.jpg",
//      "price":30,
//      "old_price":35,
//    },
//    {
//      "name" : "Chilly Powder",
//      "pic":"assets/chilli.jpg",
//
//      "price":130,
//      "old_price":235,
//    },
//    {
//      "name" : "Coriander",
//      "pic":"assets/cor.jpg",
//
//      "price":50,
//      "old_price":65,
//    },
//    {
//      "name" : "Turmeric Powder",
//      "pic":"assets/turmeric.jpg",
//
//      "price":30,
//      "old_price":35,
//    },
//
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return GridView.builder(
//        itemCount: pro_list.length,
//        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//        itemBuilder: (BuildContext context,int index){
//          return Clean_prod(
//            prod_name: pro_list[index]["name"],
//            prod_pic: pro_list[index]["pic"],
//            prod_price: pro_list[index]["price"],
//            prod_old: pro_list[index]["old_price"],
//          );
//        });
//  }
//}
//
//class Clean_prod extends StatelessWidget {
//  final prod_name;
//  final prod_pic;
//  final prod_price;
//  final prod_old;
//  Clean_prod({
//    this.prod_name,
//    this.prod_pic,
//    this.prod_price,
//    this.prod_old
//  });
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      child: Hero(
//        tag: prod_name,
//        child: Material(
//          child: InkWell(
//            onTap: (){},
//            child: GridTile(
//              footer: Container(
//                color: Colors.white60,
//                child: ListTile(
//                  leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.w800),),
//                  title: Text("\R\s$prod_price",style: TextStyle(fontWeight: FontWeight.w600),),
//                  subtitle: Text("\R\s$prod_old",style: TextStyle(fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
//                ),
//              ),
//              child: Image.asset(prod_pic,fit: BoxFit.cover,),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}


import 'package:flutter/material.dart';
import 'package:theertha/Product.dart';
import 'package:theertha/constants.dart';
import 'package:theertha/details.dart';
import 'package:theertha/itemcard.dart';
import 'package:flutter_svg/svg.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin,vertical: 10),
          child: Text(
            "Products",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          product: products[index],
                        ),
                      )),
                )),
          ),
        ),
      ],
    );
  }
}