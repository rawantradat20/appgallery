import 'package:appgallery/shared/components/components.dart';
import 'package:flutter/material.dart';

// Reusable components
//1.timing
//2.refactor
//3.quality
class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
   var emailController=TextEditingController();

   var passController=TextEditingController();

   var formkey=GlobalKey<FormState>();

   bool isPassowardShow=true;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(''
            'AppGallery'),
        actions: [
          IconButton(
              onPressed: (){
                print('not search');
              },
              icon: Icon(
            Icons.search,
          ))
        ],
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body:  SafeArea(
          child:Container(
              color:Colors.black12,
              child: Form(
                key:formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50, ),
                    Text(''
                        'Go Home AppGallery Massinger',
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight:FontWeight.bold,

                         ),
                    ),
                    SizedBox(height: 100, ),
                   TextFormField(
                     controller:emailController,
                    keyboardType:TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                    print(value);
                  },
                     validator: ( value){
                      // if(value.isEmpty)
                        // {
                      //     return 'email address must not be empty ';
                       //  }
                      // return null;
                     },
                     decoration:InputDecoration(
                       labelText: 'Email Addres  ',
                           prefixIcon:Icon(Icons.email,) ,
                        border:OutlineInputBorder(),


                     ),
                   ),
                    SizedBox(height: 30,),
                    TextFormField(
                      controller: passController,
                      keyboardType:TextInputType.visiblePassword,
                      obscureText: isPassowardShow,
                      onFieldSubmitted: (pass){
                        print(pass);
                      },
                      validator: ( value){
                       // if(value.isEmpty)
                       // {
                     //     return 'passowred  must not be empty ';
                       // }
                      //  return null;
                      },
                      decoration:InputDecoration(
                        labelText: 'passored   ',
                        prefixIcon:Icon(
                          Icons.password_outlined,) ,
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              isPassowardShow=!isPassowardShow;
                            });
                          },
                          icon:Icon(
                            Icons.remove_red_eye,
                          ),
                        ),
                        border:OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 60,),
                    defaultBoutton(
                      text: 'login',
                      functions: (){
                        //if(formkey.currentState.validate())
                        //{
                          print(emailController.text);
                          print(passController.text);
                       // }
                      },
                      redius: 20.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Don\'t have an accont?'),
                        TextButton(
                            onPressed: (){},
                            child: Text('Register Now')),
                                ],
                    )
                ],
                ),
              ),
            ),
          ),

        );



  }
}
