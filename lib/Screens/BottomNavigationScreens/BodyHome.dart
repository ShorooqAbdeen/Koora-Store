import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koora_store/Screens/BottomNavigationScreens/BottomNavagtionScreen.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Star sport clothes",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/CristianoRonaldoT-shirt.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Cristiano Ronaldo T-shirt",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/neymar.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Neymar T-shirt",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            image: AssetImage('images/RamosT-shirt.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        child: Text(
                          "Ramos T-shirt",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/RomarioT-shirt.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Romario T-shirt",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    image: AssetImage('images/BigSale.png'),
                    fit: BoxFit.fill,
                  ))),
          ListTile(
            title: Text(
              "Winter Sports Clothes",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/UnionExercise.jpg'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Union exercise kit",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/BarcelonaExerciseKit.jpg'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Barcelona Exercise Kit",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            image:
                                AssetImage('images/ManchesterExerciseKit.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        child: Text(
                          "Manchester Exercise Kit",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/RealMadridExerciseKit.jpg'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Real Madrid Exercise Kit",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15,bottom: 100),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Customer Reviews",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,right: 30
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        margin:EdgeInsets.only(right: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/person.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Ahmed Ali",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                            Container(
                              child: Text("Gaza",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                            Container(
                              child: Text("Wonderful",style:TextStyle(fontSize: 12,color:Colors.grey,),),
    ),
                          ],
                        ),
                      ),

                      Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 10,left: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/person.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        child:Column(
                          children: [
                            Text("Ahmed Ali",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                            Container(
                              child: Text("Gaza",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                            Container(
                              child: Text("Wonderful",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 10,left: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/person.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        child:Column(
                          children: [
                            Text("Ahmed Ali",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                            Container(
                              child: Text("Gaza",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                            Container(
                              child: Text("Wonderful",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 10,left: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/person.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        child:Column(
                          children: [
                            Text("Ahmed Ali",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                            Container(
                              child: Text("Gaza",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                            Container(
                              child: Text("Wonderful",style:TextStyle(fontSize: 12,color:Colors.grey),),
                            ),
                          ],
                        ),
                      ),

               ],
    ),
    ),
    ],
    ),
    ),
          ListTile(
            title: Text(
              "Football Shoes ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/NikeShoes.jpg'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Nike Shoes",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/MizunoShoes.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Mizuno Shoes",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            image: AssetImage('images/AdidasShoes.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        child: Text(
                          "Adidas Shoes",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage('images/NiviaShose.png'),
                                fit: BoxFit.fill,
                              ))),
                      Container(
                        height: 30,
                        child: Text(
                          "Nivia Shose",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "SAR 189.00",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                                size: 18,
                              ),
                              margin: EdgeInsets.only(left: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
      ),
    );
  }
}
