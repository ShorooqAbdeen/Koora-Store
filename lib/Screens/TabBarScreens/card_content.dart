import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koora_store/Screens/TabBarScreens/card_model.dart';
class CardContent extends StatelessWidget {

  List<CardModel> data=[
    CardModel("_image", "_descrebtion", "_detailes", "_priceBef", "_priceAft"),
    CardModel("_image2", "_descrebtion2", "_detailes2", "_priceBef2", "_priceAft2"),
  ];
  CardContent(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1C),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
            ),
            itemBuilder:(context, index) {
              return Container(
                height: 200,
                child: Card(
                  elevation: 10,
                  clipBehavior: Clip.antiAlias,
                    semanticContainer: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset(data.elementAt(index).image,height: 80,fit:BoxFit.fitWidth,),
                      SizedBox(height: 10,),
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children: [
                            Text(data.elementAt(index).descrebtion,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),
                            SizedBox(height: 5,),
                            Text(data.elementAt(index).detailes,style:TextStyle(color: Colors.grey.shade600,fontSize:13)),
                            SizedBox(height: 5,),
                            Text(data.elementAt(index).priceBef,style: TextStyle(color: Colors.grey,fontSize:10 ),),
                            SizedBox(height: 5,),
                            Text(data.elementAt(index).priceAft,style: TextStyle(color: Colors.red,fontSize: 10),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              );
            }),
      ),
    );

  }
}

