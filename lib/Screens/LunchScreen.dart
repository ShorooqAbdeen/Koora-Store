import 'package:flutter/material.dart';
class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
    Navigator.pushReplacementNamed(context, "/home_screen");
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
     child:Image.asset("images/koora_logo.png") ,
    );
  }
}
