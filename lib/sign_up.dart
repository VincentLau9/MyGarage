

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{

  Widget textField({required String hindtext}){
    return TextFormField(
      decoration: InputDecoration(
        hintText: hindtext,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide:  BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget button({required String buttonName, required Color color, required Color textColor}){
    return Container(
      width: 120,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: (){},
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 20, color: textColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       leading: IconButton(
         icon: Icon(
           Icons.arrow_back_ios,
           color: Colors.white,
         ),
         onPressed: () {  },
       ),
     ),
     body: SafeArea(
       child: Container(
         margin: EdgeInsets.symmetric(horizontal: 50),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text("Sign Up",
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 40,
               ),
             ),
             Container(
               height: 300,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   textField(hindtext: "Email"),
                   textField(hindtext: "Name"),
                   textField(hindtext: "Password"),
                   textField(hindtext: "Comfirm Password"),
                 ],
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 button(buttonName: "Cancel", color: Colors.grey, textColor: Colors.black),
                 SizedBox(width: 10,),
                 button(buttonName: "Register", color: Colors.red, textColor: Colors.white),
               ],
             ),
           ],
         ),
       ),
     ),
   );
  }
  
}