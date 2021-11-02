import 'package:flutter/material.dart';
// state less containt one class provide widget

// state ful contain tow classes

//1.first class provide widget
//2. second class provide state from this widget
class Counter extends StatefulWidget
{
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter>{
  int counter=1;
  //1.constructor
  //2.init state
  //3.build
   @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                counter--;
                print(counter);
              });

            },child: Text(
                'MINUS'
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(onPressed: (){},child: Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50.0,
                ),
              ),),
            ),
            TextButton(onPressed: (){
              setState(() {
                counter++;
                print(counter);
              });

            },child: Text(
                'PLUS'
            ),),
          ],
        ),
      ),
    );
  }
}