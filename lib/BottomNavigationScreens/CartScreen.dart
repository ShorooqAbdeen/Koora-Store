import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_cart_outlined,size: 100,color: Colors.blue,),
          Text("This cart is empty",style: TextStyle(fontSize: 18,color: Colors.grey),)

        ],
      ),
    );
  }
}
