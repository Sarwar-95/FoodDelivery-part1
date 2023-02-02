import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodDelivery extends StatefulWidget {
  const foodDelivery({super.key});

  @override
  State<foodDelivery> createState() => _foodDeliveryState();
}

class _foodDeliveryState extends State<foodDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      //==============(APP BAR)===================
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Food Delivey",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.black,
            iconSize: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            iconSize: 20,
          ),
        ],
      ),

      //==================(Body)====================
      body: Body(),
    );
  }
}

//==================== Body part ======================
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //========================================
            Container(
              height: 39,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  textBar(
                    text: "All",
                  ),
                  textBar(
                    text: "Pizza",
                  ),
                  textBar(
                    text: "Chezz",
                  ),
                  textBar(
                    text: "Burger",
                  ),
                  textBar(
                    text: "Chicken",
                  ),
                  textBar(
                    text: "Mutton",
                  ),
                ],
              ),
            ),
            //-----------------------------------

            SizedBox(
              height: 20,
            ),

            MoreItem(),

            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            //-----------------------------------

            // MoreItem(),

            //-----------------------------------
            // Row(
            //   children: [
            //     Card(),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Card(),
            //   ],
            // ),
            //-----------------------------------
            MoreItem(),
            MoreItem(),
            MoreItem(),
            MoreItem(),
          ],
        ),
      ),
    );
  }
}

//==================== Custom Text Bar (1)=======================
class textBar extends StatelessWidget {
  final String text;
  const textBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 1),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

//======================== More Item (2)===========================
class MoreItem extends StatelessWidget {
  //final Image img;
  const MoreItem({
    super.key,
    //required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("images/two.jpg"), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.lightBlue, blurRadius: 10, offset: Offset(3, 7)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Burger",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "KFC",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              Container(
                width: 35,
                height: 35,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//================= Card (3)=================
class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 170,
          width: 166,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.greenAccent[100],
              boxShadow: [
                BoxShadow(
                    color: Colors.lightBlue,
                    blurRadius: 10,
                    offset: Offset(3, 7)),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/five.jpg"),
                ),
                SizedBox(
                  height: 5,
                ),

                Text(
                  "Burger",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //-------------------------------------------------
                Text(
                  "Royal Kitchen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                //---------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.pinkAccent,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.pinkAccent,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.pinkAccent,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//