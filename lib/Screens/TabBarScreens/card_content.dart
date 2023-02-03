import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:koora_store/Controllers/FirestoreController.dart';
import 'package:koora_store/Model/Users.dart';
import 'package:koora_store/Screens/TabBarScreens/card_model.dart';
class CardContent extends StatelessWidget {
  static String? id ;
  List<CardModel> data=[
    CardModel("_image", "_descrebtion", "_detailes", "_priceBef", "_priceAft"),
    CardModel("_image2", "_descrebtion2", "_detailes2", "_priceBef2", "_priceAft2"),
  ];
  CardContent(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body:Container(
        color: Colors.grey.withOpacity(0.3),
        child: MasonryGridView.builder(
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10,
          crossAxisSpacing: 1,
          itemBuilder: (BuildContext context, int index) => Container(
                  height: 320,
                    margin: const EdgeInsets.all(11.0),
                    clipBehavior: Clip.antiAlias,
                     decoration:BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6,right: 6,bottom: 0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(data.elementAt(index).image,height:180,fit: BoxFit.fill,),
                            SizedBox(height:10,),
                            Column(
                              children: [
                                Text(data.elementAt(index).descrebtion,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),
                                SizedBox(height: 10,),
                                Text(data.elementAt(index).detailes,style:TextStyle(color: Colors.grey.shade600,fontSize:13)),
                                SizedBox(height: 35,),
                                Align(alignment: Alignment.bottomRight,child: Text(data.elementAt(index).priceBef,style: TextStyle(color: Colors.grey,fontSize:11),)),
                                SizedBox(height: 5,),
                                Align(alignment: Alignment.bottomRight,child:Text(data.elementAt(index).priceAft,style: TextStyle(color: Colors.red,fontSize: 11),)),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                            bottom:0,
                            // child: Container(
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            //     color: Colors.black.withOpacity(0.8),
                            //   ),
                              child: IconButton(
                                  onPressed: (){
                                    print("icons pressed ${id}");
                                    FirestoreController.fireStoreHelper.SaveUserData(id!,Users(
                                        name1:data.elementAt(index).descrebtion ,
                                        name2: data.elementAt(index).detailes,
                                        price:data.elementAt(index).priceAft),
                                    );
                                  },
                                  icon: Icon(Icons.add_shopping_cart_rounded,),
                                  color: Colors.black,
                              ),
                            // ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }




}


