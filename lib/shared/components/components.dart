import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultBoutton({
   double width=200,
   Color background=Colors.orangeAccent,
  bool isUpperCase =true,
  double redius=0.0,
  required Function functions,
  required String text,
})=>  Container(
  width: width,
  height: 40.0,
  child: MaterialButton(
    onPressed: functions(),
    child: Text(
     isUpperCase ?  text.toUpperCase():text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.white,


      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(redius),
    color:background,

  ),
);