import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:koora_store/Controllers/FirebaseAuthController.dart';
class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);
  @override
  State<LunchScreen> createState() => _LunchScreenState();
}
class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    Future.delayed(Duration(seconds: 3),(){
      String routeName = FirebaseAuthController().isLoggedIn()?"/home_screen":"/sign_in_screen";
      Navigator.pushReplacementNamed(context, routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Center(
       child:Image.asset("images/koora_logo_removebg.png") ,
      ),
    );
  }
}
