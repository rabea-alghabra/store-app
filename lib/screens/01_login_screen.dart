import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:store/screens/02_sign_up_screen.dart';
import 'package:store/screens/03_home_page.dart';

class LoginPage extends StatefulWidget {
  static String id = 'Login';

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Color.fromARGB(255, 138, 25, 17),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Color.fromARGB(255, 160, 49, 5),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                GestureDetector(
                  onTap: () {
                    print('Sign up Pressed');
                    Navigator.of(context).pushNamed((SignUpUserScreen.id));
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account?   ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 105, 18, 18),
                            fontSize: 19.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: MaterialButton(
                      height: 50,
                      minWidth: 300,
                      textColor: Colors.white,
                      color: Color.fromARGB(255, 128, 55, 50),
                      child: Text('Login'),
                      onPressed: () async {
                        SharedPreferences user =
                            await SharedPreferences.getInstance();
                        user.setString('email', nameController.text);
                        user.setString('password', nameController.text);
                        user.setBool("isLogin", true);
                        Navigator.pushNamed(context, HomePage.id);
                      },
                    ),
                  ),
                ),
              ],
            )));
  }
}
