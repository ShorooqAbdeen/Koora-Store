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
                height: 500,
                width: double.infinity,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset(data.elementAt(index).image,height: 70,),
                      Text(data.elementAt(index).descrebtion),
                      Text(data.elementAt(index).detailes),
                      Text(data.elementAt(index).priceBef),
                      Text(data.elementAt(index).priceAft)
                    ],
                  ),
                ),
              );
            }),
      ),
    );

  }
}

