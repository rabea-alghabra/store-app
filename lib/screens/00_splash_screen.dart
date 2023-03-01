import 'package:flutter/material.dart';
import 'package:firstsplashscreenview/firstsplashscreenview.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store/screens/01_login_screen.dart';
import 'package:store/screens/03_home_page.dart';

class SplashScreen01 extends StatefulWidget {
  static String id = 'Splashpage';
  const SplashScreen01({Key? key}) : super(key: key);

  @override
  State<SplashScreen01> createState() => _SplashScreen01State();
}

class _SplashScreen01State extends State<SplashScreen01> {
  bool isLogin = false;
  loadSplash() async {
    SharedPreferences user = await SharedPreferences.getInstance();
    bool? _isLogin = user.getBool("isLogin");
    if (_isLogin != null) {
      setState(() {
        isLogin = _isLogin;
      });
    }
  }

  @override
  void initState() {
    loadSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      //colors: Colors.transparent,
      nextPage: !isLogin ? LoginPage() : HomePage(),
      duration: const Duration(seconds: 5),
      backgroundColor: Color.fromARGB(158, 65, 56, 97),
      text: Text(
        "Store App",
        style: TextStyle(
            color: Color.fromARGB(227, 126, 29, 29),
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
      child: Container(
        height: MediaQuery.of(context).size.longestSide,
        width: MediaQuery.of(context).size.longestSide,
        decoration: const BoxDecoration(
            //     image: DecorationImage(
            //   image: AssetImage(
            //     "assets/images/im04.jpg",
            //   ),
            //   fit: BoxFit.cover,
            //   filterQuality: FilterQuality.high,
            // ),
            color: Color.fromARGB(158, 95, 86, 129)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "  ",
              style: TextStyle(
                  color: Color.fromARGB(227, 126, 29, 29),
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 250.0),
            CircularProgressIndicator(
              color: Color(0xf9070501),
              backgroundColor: Color(0xad0e3b57),
            ),
          ],
        ),
      ),
    );
  }
}
