import 'package:flutter/material.dart';
class home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
            ' Services'),
        actions: [
          IconButton(
              onPressed: (){print('hi');},
              icon:Icon(Icons.notification_important)
          ),
          IconButton(onPressed: (){
            print('rawan');
          }, icon:  Icon(
            Icons.search,
          ),) ,
        ],
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                width: 100.0,
                height: 300.0,
                image: NetworkImage('https://cdn5.vectorstock.com/i/1000x1000/78/59/happy-grin-emoji-instant-messaging-icon-imag-vector-17067859.jpg'),
              ),
              Container(
                color: Colors.grey,
                child: Text(
                  'login side',
                  textAlign: TextAlign.end,
                  style:TextStyle(
                    fontSize: 30,



                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}