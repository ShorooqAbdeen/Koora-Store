import 'package:flutter/material.dart';
void main()=>runApp(MainScreen());
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Koora Store"),
    );
  }
}
