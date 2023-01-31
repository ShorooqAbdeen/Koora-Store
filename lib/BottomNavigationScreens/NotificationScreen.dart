import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
     Icon(Icons.notifications_active_outlined,size: 100,color: Colors.blue,),
          Text("Shop now to track the status of your order",style: TextStyle(fontSize: 18,color: Colors.grey),
          )

        ],
      ),
    );
  }
}
