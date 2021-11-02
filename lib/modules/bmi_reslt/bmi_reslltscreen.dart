import 'package:flutter/material.dart';
class Bmireslt extends StatelessWidget {
  final int result;
  final bool isMail;
 final int age;
 Bmireslt({
   required this.result,
   required this.isMail,
   required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Gender :${isMail ? 'Male':'Femail'}',
                style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              'Result:${result}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age :${age}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

