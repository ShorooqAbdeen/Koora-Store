import 'package:flutter/material.dart';

import '../DrawerScreens/DrawerWidget.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          appBar: AppBar(
            title: Icon(Icons.add),
            backgroundColor: Color(0xff1C1C1C),
            elevation: 5,
            centerTitle: true,
          ),
          drawer:DrawerWidget(),
    )
    );
  }
}