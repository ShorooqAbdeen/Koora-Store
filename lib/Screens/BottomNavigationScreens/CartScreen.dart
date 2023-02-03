import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
            leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back),),
            title: Text("Cart"),
           centerTitle: true,
           backgroundColor: Colors.black.withOpacity(.7),
           ),
           body: Center(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.shopping_cart_outlined,size: 70,color: Colors.black,),
                Text("This cart is empty",style: TextStyle(fontSize: 18,color: Colors.grey),)
        ],
      ),
           ),
      ),
    );
  }
}
