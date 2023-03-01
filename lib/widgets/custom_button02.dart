

import 'package:flutter/material.dart';

Widget Button01(BuildContext ctx, String title, String page){
  return Container(
    margin: const EdgeInsets.all(35.0),
    padding: const EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: MaterialButton(
      elevation: 5,
      onPressed:   (){
        Navigator.pushNamed(ctx,
            page);
      },
      padding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color.fromARGB(255, 144, 30, 30),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xf4f5ba47),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}