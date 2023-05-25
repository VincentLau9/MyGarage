import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i=1;i<6;i++)
        Container(
          height: 100,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index){

                  },
              ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset("asset/image/$i.jpg"),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Garage Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                         color: Color(0xFF4C53A5),
                      ),
                    ),
                    Text(
                        "Dịch vụ rửa xe",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Text(
                      "Giá tiền: 100.000đ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    // Row(children: [
                    //   Container(
                    //     padding: EdgeInsets.all(4),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //   ),
                    //  ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
