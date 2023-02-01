import 'package:flutter/material.dart';
import 'package:koora_store/BottomNavigationScreens/BodyHome.dart';
import 'package:koora_store/BottomNavigationScreens/BottomNavagtionScreen.dart';
import '../DrawerScreens/DrawerWidget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          appBar: AppBar(
            backgroundColor: Color(0xff1C1C1C),
            elevation: 5,
            centerTitle: true,
          ),
          drawer:DrawerWidget(),
          // body:BodyHome(),
        )
    );
  }
}
