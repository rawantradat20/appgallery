import 'dart:ui';

import 'package:appgallery/modules/architecture_tasks/architecture_tasks.dart';
import 'package:appgallery/modules/done_tasks/done_tasks.dart';
import 'package:appgallery/modules/new_tasks/new_tasks.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
class home_layout  extends StatefulWidget {
  @override
  State<home_layout> createState() => _home_layoutState();
}
//1.crate database
//2.create table
//3.open database
//3.insert to database
//5.get from database
//6.update in database
//7.delete from database

class _home_layoutState extends State<home_layout> {
  int currentIndex=0;
  List<Widget>secreens=[
    newtasks(),
    donetasks(),
    architecturetasks(),
  ];
  List<String>titles=[
     'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
         titles[currentIndex],
        ),
      ),
      body: secreens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
         // try{

           // var name= await getName();
            //print(name);
            //print('osama');
           // throw('some error !!!!!!!!');
         // }

          //catch(error)
          //{
          //  print('error${error.toString()}');
          //}
        getName().then((value) {
          print(value);
          print('osama');
          //throw('my work erorr ');
        }).catchError((error){
          print('error${error.toString()}');
        });
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),
          label: 'task'),
          BottomNavigationBarItem(icon: Icon(Icons.check),
              label: 'done'),
          BottomNavigationBarItem(icon: Icon(Icons.architecture_outlined),
              label: 'architecture'),
        ],
      ),
    );
  }

  Future<String>getName() async {
    return 'ahmad ali';
}
}

void createDatabase()async
{
var database=await openDatabase(
    'todo.bd',
  version: 1,
  onCreate: (database,version){
    print('database created');
    database.execute('create table Tasks ()').then((value) {
      print('table created');
    }).catchError((error){
      print('error when creating table ${error.toString()}');
    });
  },
  onOpen: (database){
    print('database created');
  }
    );
}

void insertToDatabase(){
  
}