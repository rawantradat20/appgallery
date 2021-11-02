import 'package:appgallery/layout/home_layout.dart';
import 'package:appgallery/modules/userscreen/userscreen.dart';

import 'modules/counter/Counter.dart';
import 'modules/bmi_reslt/bmi_reslltscreen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/c-massge/c-massge.dart';
import 'modules/h-massge/h-massge.dart';
import 'modules/home/home.dart';
import 'modules/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home_layout(),

    );
  }
}


