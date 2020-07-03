import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'last.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

//item design for listview

FlatButton buildbtn(BuildContext context, String productname, String price, int number) {
  return FlatButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Lastpage()),
      );
    },
    color: Colors.lightGreen,
    child: Card(
      color: Colors.green,
      child: ListTile(
        leading: Image.asset('images/img$number.png',width: 70,),
        title: Text(productname,
        style: TextStyle(
          color: Colors.amber
        ),),
        subtitle: Text(price,
        style: TextStyle(
          color: Colors.amberAccent
        ),),
      ),
    ),
  );
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        actions: <Widget>[
          Icon(
            Icons.shopping_cart,
          ),
        ],
        title: Text(
          'My App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightGreen,
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
            buildbtn(context, 'Hot Dog', '180',2),
            buildbtn(context, 'Chicken Burger', '300',3),
            buildbtn(context, 'Fish Burger', '220',4),
            buildbtn(context, 'Cheese Burger', '320',5),
            buildbtn(context, 'Super Sandwitch', '600',6),
            buildbtn(context, 'Mutton Burger', '400',7),
            buildbtn(context, 'Regular Sandwitch', '160',8),
            buildbtn(context, 'Chicken Cheese Burger', '300',10),
            buildbtn(context, 'Regular Burger', '250',11),
            buildbtn(context, 'Double Layer Burger', '400',13),
            buildbtn(context, 'Cream Roll', '100',14),
          ],
        ),
      ),
    );
  }
}
