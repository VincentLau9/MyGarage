import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mygarage/screen/garage_detail.dart';

class NearGarage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [


            // for(int i=0; i<10; i++)
            //First item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(GarageDetail.routeName);
                },
                child: SafeArea(
                  child: Container(
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0,3),
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            //alignment: Alignment.center,
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                              'asset/image/garage1.jpg',
                            ),
                          ),
                          Text(
                            "Garage An Hùng",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            "Try our best car's services !",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding: EdgeInsets.symmetric(horizontal: 2),
                                itemBuilder: (context, _) => Icon(Icons.star,color: Color(0xFF4C53A5),),
                                onRatingUpdate: (index){},
                              ),
                              Text("(15)", style: TextStyle(color: Color(0xFF4C53A5)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Secon item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: SafeArea(
                child: Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            'asset/image/garage2.jpg',
                            height: 92,
                            width: 250,
                          ),
                        ),
                        Text(
                          "Garage Hằng",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Try our best car's services !",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Icon(Icons.star,color: Color(0xFF4C53A5),),
                              onRatingUpdate: (index){},
                            ),
                            Text("(20)",style: TextStyle(color: Color(0xFF4C53A5)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Third item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: SafeArea(
                child: Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            'asset/image/garage3.jpg',
                            height: 92,
                            width: 250,
                          ),
                        ),
                        Text(
                          "Garage Dũng",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Try our best car's services !",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Icon(Icons.star,color: Color(0xFF4C53A5),),
                              onRatingUpdate: (index){},
                            ),
                            Text("(10)", style: TextStyle(color: Color(0xFF4C53A5)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Fourth item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: SafeArea(
                child: Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            'asset/image/garage4.jpg',
                            height: 92,
                            width: 250,
                          ),
                        ),
                        Text(
                          "Garage Thắng",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Try our best car's services !",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Icon(Icons.star,color: Color(0xFF4C53A5),),
                              onRatingUpdate: (index){},
                            ),
                            Text("(19)", style: TextStyle(color: Color(0xFF4C53A5)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Five item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: SafeArea(
                child: Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            'asset/image/garage5.jpg',
                            height: 92,
                            width: 250,
                          ),
                        ),
                        Text(
                          "Garage Đạt",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Try our best car's services !",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            RatingBar.builder(
                               initialRating: 4.5,
                               minRating: 1,
                               direction: Axis.horizontal,
                               allowHalfRating: true,
                               itemCount: 5,
                               itemSize: 18,
                               itemPadding: EdgeInsets.symmetric(horizontal: 2),
                               itemBuilder: (context, _) => Icon(Icons.star,color: Color(0xFF4C53A5),),
                               onRatingUpdate: (index){},
                            ),
                            Text("(20)", style: TextStyle(color: Color(0xFF4C53A5),),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}