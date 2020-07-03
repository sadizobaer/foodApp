import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'star.dart';

class Lastpage extends StatefulWidget {
  @override
  _LastpageState createState() => _LastpageState();
}

// last scrolable image design
Card makeimg(int number) {
  return Card(
    color: Colors.green,
    child: Image(
      height: 100,
      width: 100,
      image: AssetImage('images/img$number.png'),
    ),
  );
}

class _LastpageState extends State<Lastpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Details'),
        actions: <Widget>[
          Icon(
            Icons.shopping_cart,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: Image.asset('images/img18.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Chicken Platter'),
                      Text('300'),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.amber,
                      size: 12,
                    ),
                    //we created a class to display stars
                    child: StarDisplay(value: 3),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 400,
              child: Text(
                'Text messaging is most often used between private mobile phone users, as a substitute for voice calls in situations where voice communication is impossible or undesirable (e.g., during a school class or a work meeting). Texting is also used to communicate very brief messages, such as informing someone that you will be late or reminding a friend or colleague meeting. As with e-mail, informality and brevity have become an accepted part of text messaging',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  makeimg(3),
                  SizedBox(
                    width: 10,
                  ),
                  makeimg(17),
                  SizedBox(
                    width: 10,
                  ),
                  makeimg(4),
                  SizedBox(
                    width: 10,
                  ),
                  makeimg(6),
                  SizedBox(
                    width: 10,
                  ),
                  makeimg(7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
