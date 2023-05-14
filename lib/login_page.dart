import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
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
                onPressed: () {  },
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
                Text("New user ?", style: TextStyle(color: Colors.grey),),
                Text("Register now ", style: TextStyle(color: Colors.red),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
