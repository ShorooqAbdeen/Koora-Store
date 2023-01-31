import 'package:flutter/material.dart';
import 'package:koora_store/BottomNavigationScreens/CartScreen.dart';
import 'package:koora_store/Screens/HomeScreen.dart';
import 'package:koora_store/BottomNavigationScreens/NotificationScreen.dart';
class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

  List pages =[
    HomeScreen(),
    CartScreen(),
    NotificationScreen(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 1,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor:Colors.black ,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        elevation: 0,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: "Notifications",
          ),
        ],
      ),
    );

  }
}
