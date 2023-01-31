import 'package:flutter/material.dart';
import 'package:koora_store/BottomNavigationScreens/BottomNavagtionScreen.dart';
import 'package:koora_store/BottomNavigationScreens/CartScreen.dart';
import 'package:koora_store/Screens/HomeScreen.dart';
import 'package:koora_store/Screens/LunchScreen.dart';
import 'package:koora_store/BottomNavigationScreens/NotificationScreen.dart';

void main()=>runApp(MainScreen());

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/lunch_screen",
      routes: {
         "/lunch_screen":(context)=>LunchScreen(),
         "/home_screen":(context)=>HomeScreen(),
        "/notification_screen":(context)=>NotificationScreen(),
        "/cart_screen":(context)=>CartScreen(),
        "/bottom_screen":(context)=>BottomScreen(),
      },
    );
  }
}
