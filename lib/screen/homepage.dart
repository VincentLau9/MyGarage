import 'package:flutter/material.dart';
import 'package:mygarage/widget/Near_Garage.dart';
import 'package:mygarage/widget/appbarwidget.dart';

import '../widget/DrawerWidget.dart';

class HomePage extends StatelessWidget{
  static const routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
        AppBarWidget(),
        SizedBox(height: 450,),
        NearGarage(),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
  
}