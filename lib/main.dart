
import 'package:flutter/material.dart';
import 'dress_catalouge.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 75, left: 25.0, right: 20),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 25,
                ),
                CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/images/gamma4.jpg'),
                  // backgroundColor: Colors.grey,
                  radius: 25,
                )
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Shop for',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'Day Dresses',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Dress_Catalouge(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.home,
                ),
                Icon(
                  Icons.favorite_border,
                ),
                Icon(
                  Icons.shopping_basket,
                ),
                Icon(
                  Icons.person,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
