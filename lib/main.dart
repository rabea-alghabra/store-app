import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store/screens/00_splash_screen.dart';
import 'package:store/screens/01_login_screen.dart';
import 'package:store/screens/02_sign_up_screen.dart';
import 'package:store/screens/03_home_page.dart';
import 'package:store/screens/04_item.dart';
import 'package:store/screens/05_update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen01.id,
      routes: {
        SplashScreen01.id: (context) => SplashScreen01(),
        LoginPage.id: (context) => LoginPage(),
        SignUpUserScreen.id: (context) => SignUpUserScreen(),
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
        Item.id: (context) => Item(),
      },
    );
  }
}
