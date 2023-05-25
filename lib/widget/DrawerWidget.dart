import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {

  Widget ListTileComponent({required IconData icon, required String name}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xFF4C53A5),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
              ),
              accountName: Text(
                'Nguyen Van A',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'anguyenvan@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/auth/avatar.png'),
              ),
            ),
          ),

          //List tile home
          ListTileComponent(icon: Icons.home, name: 'Home'),
          //List tile my account
          ListTileComponent(icon: Icons.person, name: 'My Account'),
          //list tile cart
          ListTileComponent(icon: Icons.shopping_cart, name: 'Cart'),
          //Track
          ListTileComponent(icon: Icons.checklist, name: 'Tracking'),
          //HIstory booking
          ListTileComponent(icon: Icons.calendar_month, name: 'Booking History'),
          //list tile logout
          ListTileComponent(icon: Icons.output, name: "Log Out"),
        ],
      ),
    );
  }
}
