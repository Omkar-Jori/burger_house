import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/burgerScreen.dart';
import './widgets/foodContainer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141414),
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 20.0),
          Icon(Icons.bookmark_border),
          SizedBox(width: 20.0),
          Icon(Icons.favorite_border),
          SizedBox(width: 20.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'BURGER HOUSE',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  FoodContainer(
                      imagePath: 'assets/1.png',
                      name: 'Burger Combo',
                      price: '\$11.99'),
                  SizedBox(width: 20.0),
                  FoodContainer(
                      imagePath: 'assets/2.png',
                      name: 'Chicken Burger',
                      price: '\$9.99'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BurgerScreen()),
                        );
                      },
                      child: FoodContainer(
                          imagePath: 'assets/3.png',
                          name: 'Classic Burger',
                          price: '\$12.99')),
                  SizedBox(width: 20.0),
                  FoodContainer(
                      imagePath: 'assets/4.png',
                      name: 'Double Burger',
                      price: '\$20.99'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}