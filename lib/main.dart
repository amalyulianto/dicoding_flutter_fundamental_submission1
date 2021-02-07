import 'package:flutter/material.dart';
import 'package:local_restaurant/screens/error_screen.dart';
import 'package:local_restaurant/screens/list_page.dart';
import 'package:local_restaurant/screens/restaurant_page.dart';
import 'package:local_restaurant/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant App',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        ListPage.routeName: (context) => ListPage(),
        RestaurantPage.routeName: (context) => RestaurantPage(
              data: ModalRoute.of(context).settings.arguments,
            ),
        ErrorScreen.routeName: (context) => ErrorScreen(),
      },
    );
  }
}
