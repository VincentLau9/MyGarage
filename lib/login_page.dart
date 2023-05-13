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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              textField(
                iconColor: Colors.white,
                icon: Icons.person_outline,
                hintText: "Username",
              ),
              textField(
                  iconColor: Colors.white,
                  icon: Icons.lock_outline,
                  hintText: "Password",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
