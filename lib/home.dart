import 'package:flutter/material.dart';
import 'reuseable.dart';
import 'first.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String _email, _pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/img18.png'),
            SizedBox(height: 10,),
            ReuseableContainer(
              cchild: TextFormField(
                onSaved: (val) => _pass = val,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                ),
              ),
            ),
            ReuseableContainer(
              cchild: TextFormField(
                obscureText: true,
                onSaved: (val) => _pass = val,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Firstpage()),
                );
                print("$_email and $_pass");
              },
              child: Container(
                height: 60,
                width: 400,
                child: Center(
                  child: Text(
                    'log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

