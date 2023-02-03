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
           body:
           ListView.builder(itemCount: 10,
              itemBuilder: ((context, index) => Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(top:10,right: 10,left: 10,bottom: 4),
                     child: Stack(
                       children: [
                         Card(
                           child: Container(
                             height:120,
                             width:double.infinity,
                             decoration: BoxDecoration(
                               color: Colors.grey.withOpacity(0.1),
                               boxShadow: [BoxShadow(
                                   spreadRadius: 1,
                                   blurRadius: 0.5,
                                   color: Colors.white.withOpacity(0.2)
                               )],
                               // borderRadius: BorderRadius.circular(20),
                             ),
                             child: Row(
                               children: [
                                 Image.asset("images/home/messsi_removepg.png",width: 100,),
                                 SizedBox(width: 15,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("Messi T-shirt",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.7)),),
                                     SizedBox(height:5,),
                                     Text("3 Star Players",style: TextStyle(fontSize: 15),),
                                     Text("̶S̶A̶R̶ ̶1̶2̶9̶.̶0̶0̶",style: TextStyle(color: Colors.red,fontSize: 11),),
                                   ],
                                 ),
                               ],
                             ),
                           ),
                           elevation: 10,
                         ),
                           Positioned(
                            bottom:10,
                            right:10,
                             child: Container(
                               height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white70.withOpacity(0.5),
                                      border: Border.all(color: Colors.red)
                                  ),
                              child: Center(
                                child: IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.delete_outline,),
                                    color: Colors.red,
                           ),
                              ),
                           ),
                           ),
                       ],
                     )
                   ),
                 ],
               )

      ),
    ),
        ),
    );
  }
}
/*Center(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.shopping_cart_outlined,size: 70,color: Colors.black,),
                Text("This cart is empty",style: TextStyle(fontSize: 18,color: Colors.grey),)
        ],
      ),
           ),*/

