import 'package:flutter/material.dart';
import 'package:theertha/dashboard.dart';
import 'package:theertha/more.dart';
import 'package:theertha/products.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _pages = [
    DashBoard(),
    Home(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
//      drawer: Drawer(
//        child: ListView(
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            DrawerHeader(
//                decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                        colors: <Color>[Colors.blueGrey, Colors.blueGrey])),
//                child: Container(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//
//                      Image.asset(
//                        "assets/logo.png",
//                        width: 150,
//                        height: 150,
//                      ),
//
//
//                    ],
//                  ),
//                )),
//            InkWell(
//              onTap: () {},
//              child: ListTile(
//                leading: Icon(Icons.info),
//                title: Text("About Us"),
//              ),
//            ),
//            InkWell(
//              onTap: () {
//                launch("tel://100");
//              },
//              child: ListTile(
//                leading: Icon(Icons.contact_phone),
//                title: Text("Contact Us"),
//              ),
//            ),
//            ListTile(
//              onTap: () async {
//
//              },
//              leading: Icon(Icons.lock),
//              title: Text("Logout"),
//            ),
//          ],
//        ),
//      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            //backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text("Productss"),
            //backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text("More"),
            //backgroundColor: Colors.yellow
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
