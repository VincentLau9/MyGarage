import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mygarage/screen/shopping_cart.dart';
import 'package:mygarage/widget/ServiceItemSamples.dart';
import 'package:mygarage/widget/App_Icon.dart';

class GarageDetail extends StatelessWidget {
  static const routeName = '/garagedetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    icon: Icons.arrow_back, size: 25,
                  ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(ShoppingCart.routeName);
                  },
                  child: AppIcon(iconColor: Colors.white,
                        backgroundColor: Colors.transparent,
                        icon: Icons.shopping_cart, size: 20),
                ),

              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(25),
              child: Container(
                color: Colors.white,
                  child: Center(
                    child: Text(
                        "Garage An Hung",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "asset/image/1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
         SliverToBoxAdapter(
           child: Column(
             children: [
               Text(
                   "Garage tốt nhất ở gần bạn"
               ),
               Text(
                 "2 Trần Hưng Đạo, phường 2, quận 5, TPHCM."
               ),
               SingleChildScrollView(
                 child: ServiceItemSample(),
               ),
             ],
           ),
         ),
        ],
      )
    );
  }
}
