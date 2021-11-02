import 'package:appgallery/models/usermodel/user_model.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  List<UserModle>users=[
    UserModle(
      id: 1,
      name: 'rawan tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 2,
      name: 'reem tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 3,
      name: 'rinad tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 4,
      name: 'lina tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 5,
      name: 'mohamad tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 6,
      name: 'raed tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 7,
      name: 'awad tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 8,
      name: 'ahmad tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 9,
      name: 'ahmad tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 9,
      name: 'rinad tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 10,
      name: 'lina tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 11,
      name: 'rawan tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 12,
      name: 'omar tradat',
      phone: '085431467643',
    ),
    UserModle(
      id: 13,
      name: 'rawan tradat',
      phone: '085431467643',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'User',
          style: TextStyle(
            fontSize: 30,
            color:Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            print('rawan');
          },
            icon:Icon(
              Icons.search_rounded,
            ) ,
          ),
        ],
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=>buildUserItem(users[index]),
        separatorBuilder: (context,index)=>Padding(
          padding: const EdgeInsetsDirectional.only(start:20.0,),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount:users.length,
      ),
    );
  }
  //1. build items
  //2.build list
  //3.add items to list
  Widget buildUserItem(UserModle user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          child: Text('${user.id}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
        ),
        SizedBox(width: 20.0,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            Text('${user.phone}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),),
          ],
        ),
      ],
    ),
  );
}