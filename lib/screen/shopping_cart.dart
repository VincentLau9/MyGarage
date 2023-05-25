import 'package:flutter/material.dart';
import 'package:mygarage/widget/CartAppBar.dart';

import '../widget/CartBottomNavBar.dart';
import '../widget/CartItemSamples.dart';

class ShoppingCart extends StatelessWidget {
  static const routeName = '/shoppingcart';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            CartAppBar(),
            Container(
              height: 700,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  CartItemSamples(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF4C53A5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                              "Add coupon code",
                            style: TextStyle(
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CartBottomNavBar(),
      ),
    );
  }
}
