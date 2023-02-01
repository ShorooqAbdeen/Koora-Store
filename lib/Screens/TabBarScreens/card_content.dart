import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardContent extends StatelessWidget {
  String image;
  String descrebtion;
  String detailes;
  String priceBef;
  String priceAft;


  CardContent({this.image="", this.descrebtion="", this.detailes="", this.priceBef="",
    this.priceAft=""});

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
                      Image.asset(image,height: 70,),
                      Text(descrebtion),
                      Text(detailes),
                      Text(priceBef),
                      Text(priceAft)
                    ],
                  ),
                ),
              );
            }),
      ),
    );

  }
}

