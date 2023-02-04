import 'package:flutter/material.dart';
import 'package:koora_store/Controllers/FirestoreController.dart';
import 'package:koora_store/Provider/UserProvider.dart';
import 'package:provider/provider.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}


class _CartScreenState extends State<CartScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<UsersProvider>(context, listen: false).getAllUsersObjects();
  }
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
        body:Consumer<UsersProvider>(
          builder: (context, userProvider, _) => userProvider.userList.isEmpty
         ? Center(child:CircularProgressIndicator())
         : ListView.builder(itemCount: userProvider.userList.length,
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
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 0.5,
                                color: Colors.white.withOpacity(0.2)
                            )],
                            // borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image.asset("${userProvider.userList[index].image}",width: 100,),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${userProvider.userList[index].name1}",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.7)),),
                                  SizedBox(height:5,),
                                  Text("${userProvider.userList[index].name2}",style: TextStyle(fontSize: 15),),
                                  Text("${userProvider.userList[index].price}",style: TextStyle(color: Colors.red,fontSize: 11),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        elevation: 13,
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
                              onPressed: () {
                                FirestoreController.fireStoreHelper.delete(
                                    "${userProvider.userList[index].id}");
                                // print("${userProvider.userList[index].id}");
                                setState(() {
                                  userProvider.userList.removeAt(index);
                                });
                              },
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



