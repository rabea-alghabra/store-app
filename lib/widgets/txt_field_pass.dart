import 'package:flutter/material.dart';

class TxtFieldPass extends StatefulWidget {
  TxtFieldPass({Key? key}) : super(key: key);
  //String val;

  @override
  State<TxtFieldPass> createState() => _TxtFieldPassState();
}

class _TxtFieldPassState extends State<TxtFieldPass> {
  // String intVal = val02;
  bool hiddenPassword = true;

  // static String get val => val02;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: TextField(
            //onChanged: (value){widget.val02 = value;},
            obscureText: hiddenPassword,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              suffixIcon:

                  /// Right Icon
                  IconButton(
                icon: Icon(
                    hiddenPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.blue),
                onPressed: () {
                  setState(() {
                    hiddenPassword = !hiddenPassword;
                  });
                },
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color(0xff51c18e),
              ),
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TxtFieldConfirmPass extends StatefulWidget {
  const TxtFieldConfirmPass({Key? key}) : super(key: key);

  @override
  State<TxtFieldConfirmPass> createState() => _TxtFieldConfirmPassState();
}

class _TxtFieldConfirmPassState extends State<TxtFieldConfirmPass> {
  bool hiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Confirm Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: hiddenPassword,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              suffixIcon:

                  /// Right Icon
                  IconButton(
                icon: Icon(
                    hiddenPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.blue),
                onPressed: () {
                  setState(() {
                    hiddenPassword = !hiddenPassword;
                  });
                },
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color(0xff51c18e),
              ),
              hintText: 'Confirm Password',
              hintStyle: const TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildTxtField(
    String name, TextInputType type, Icon icon, Widget buildTxtField) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(10, 4),
            ),
          ],
        ),
        height: 60,
        child: TextField(
          keyboardType: type,
          style: const TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(top: 14),
            prefixIcon: icon,
            //color: Color(0xff51c18e),
            hintText: name,
            hintStyle: const TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ),
    ],
  );
}
