import 'package:flutter/material.dart';
import 'package:mygarage/widget/App_Icon.dart';

class ServiceItemSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 10; i++)
          GestureDetector(
            onTap: () {
              _tripEditModalBottomSheet(context);
            },
            child: Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset("asset/service/1.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Car Washing",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        Text(
                          "100.000đ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 5),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Icon(
                  //         Icons.delete,
                  //         color: Colors.red,
                  //       ),
                  //       // Row(children: [
                  //       //   Container(
                  //       //     padding: EdgeInsets.all(4),
                  //       //     decoration: BoxDecoration(
                  //       //       borderRadius: BorderRadius.circular(20),
                  //       //     ),
                  //       //   ),
                  //       //  ],),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: 300,
                  floating: true,
                  automaticallyImplyLeading: false,
                  title: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).pop(context);
                        },
                        child: AppIcon(iconColor: Colors.white,
                            backgroundColor: Colors.black26,
                            icon: Icons.clear, size: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                            "Car Washing",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),

                    ],
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                      background: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        ),
                        child: Image.asset(
                          "asset/service/1.jpg",
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: ServiceItemSample(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
