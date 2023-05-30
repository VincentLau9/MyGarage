import 'package:flutter/material.dart';
import 'package:mygarage/screen/garage_detail.dart';
import 'package:mygarage/screen/homepage.dart';
import 'package:mygarage/screen/login_page.dart';
import 'package:mygarage/screen/shopping_cart.dart';
import 'package:mygarage/screen/login_page.dart';
import 'package:mygarage/screen/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Garage',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        SignUp.routeName: (context) => SignUp(),
        HomePage.routeName: (context) => HomePage(),
        GarageDetail.routeName: (context) => GarageDetail(),
        ShoppingCart.routeName: (context) => ShoppingCart(),
      },
    );
  }
}


