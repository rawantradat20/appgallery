import 'package:flutter/material.dart';
class massngercopy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwLJjz8Xr7-_o1U8-YyB2Nk1BybJ0O8_o6oA&usqp=CAU'),
            ),
            SizedBox(width: 15,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_rounded,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    SizedBox(height: 10,),
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text('Search',
                      style: TextStyle(
                        fontSize: 30,
                      ),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 120.0,
                child: ListView.separated(
                  itemBuilder:(context,index)=>buildStoryItem(),
                  separatorBuilder:(context,index)=>SizedBox(width: 30.0,) ,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20,),
             ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index)=>buildChatItem(),
                  separatorBuilder:(context,index)=>SizedBox(height: 20.0,) ,
                  itemCount: 15,

                ),

            ],
          ),
        ),
      ),
    );
  }
  //1-build items
  //2-build list
  // 3-add item to list
  //aroww function
  Widget buildChatItem()=>  Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://6.viki.io/image/d7dcd68efa8d4abc93a7355b3f5089e9.jpeg?s=900x600&e=t'),
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(width: 20,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rawan Tradat',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Text('how are you, ples reples massaging  ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: 6,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('02.32 PM ',
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem()=>Container(
    width: 60.0,
    child: Column(
      children: [
        SizedBox(height: 10,),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://6.viki.io/image/d7dcd68efa8d4abc93a7355b3f5089e9.jpeg?s=900x600&e=t'),
            ),
            CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        Text('Rawan awad tradat',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),

      ],
    ),
  );
}