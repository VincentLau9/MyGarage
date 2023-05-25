import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mygarage/screen/homepage.dart';
import 'package:mygarage/screen/sign_up.dart';

import '../widget/backgroundimage.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  Widget textField({required String hintText,
    required IconData icon, required Color iconColor}) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: iconColor,),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),

       BackGroundImage(image: 'asset/auth/login_image.jpg'),

       Scaffold(
         backgroundColor: Colors.transparent,
          body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Login In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  textField(
                    iconColor: Colors.white,
                    icon: Icons.person_outline,
                    hintText: "Username",
                  ),
                  SizedBox(height: 30,),
                  textField(
                      iconColor: Colors.white,
                      icon: Icons.lock_outline,
                      hintText: "Password",
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomePage.routeName);
                  },
                  child: Text("Login", style: TextStyle(
                      color:Colors.white,
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don\'t have account?", style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(SignUp.routeName);
                    },
                    child: Text(
                      "Register now ", style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ],
    );
  }
}
