import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(17),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.clear,size: 25,color: Color(0xFF4C53A5),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
                'Garage',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 24,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
  
}