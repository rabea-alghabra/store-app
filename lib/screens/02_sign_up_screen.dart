import 'package:flutter/material.dart';
import 'package:store/screens/03_home_page.dart';
import 'package:store/widgets/custom_button02.dart';
import 'package:store/widgets/txt_field_pass.dart';

class SignUpUserScreen extends StatelessWidget {
  static String id = 'signup';
  SignUpUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(236, 151, 13, 59),
            Color.fromARGB(192, 158, 85, 26),
            // Color(0x9951c18e),
            // Color(0x9951c18e),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 50.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                color: Color.fromARGB(255, 240, 173, 41),
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 50.0),
            buildTxtField(
              "First Name",
              TextInputType.name,
              const Icon(Icons.person_add, color: Colors.green),
              const SizedBox(height: 20.0),
            ),
            buildTxtField(
              "Last Name",
              TextInputType.emailAddress,
              const Icon(Icons.person_pin, color: Colors.green),
              const SizedBox(height: 20.0),
            ),
            buildTxtField(
                "Email",
                TextInputType.emailAddress,
                const Icon(Icons.email, color: Colors.green),
                const SizedBox(height: 20.0)),
            buildTxtField(
                "Phone Number",
                TextInputType.number,
                Icon(Icons.phone, color: Colors.green),
                const SizedBox(height: 20.0)),
            TxtFieldPass(),
            const SizedBox(height: 20.0),
            // const TxtFieldConfirmPass(),
            // const SizedBox(height: 20.0),
            Button01(context, "Let's Start", HomePage.id),
          ],
        ),
      ),
    ));
  }
}
