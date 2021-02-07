import 'dart:async';

import 'package:flutter/material.dart';
import 'package:local_restaurant/const.dart';
import 'package:local_restaurant/screens/list_page.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationRoute);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationRoute() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => ListPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorBlue,
        body: Container(
            child:
                Center(child: Image.asset('assets/images/Terserah Food.png'))));
  }
}
