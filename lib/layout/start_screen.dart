
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/modules/home_screen.dart';



class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(seconds: 7),
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>
            HomeScreen())),
        );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/starting.jpg',
                fit: BoxFit.cover,
              )),
          Positioned(
              right: 60,
              left: 100,
              top: 150,
              child: Text(
                'WellCome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    letterSpacing: 2.0),
              )),
          Positioned(
              left: 160, bottom: 180,
              child: CircularProgressIndicator(backgroundColor: Colors.white,)),
        ],
      ),
    );
  }
}
