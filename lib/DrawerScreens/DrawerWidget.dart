import 'package:flutter/material.dart';
import 'package:koora_store/DrawerScreens/AccountScreen.dart';

import 'SettingsScreen.dart';
class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  NavigationDrawers();
  }
}
class NavigationDrawers extends StatefulWidget {
  @override
  State<NavigationDrawers> createState() => _NavigationDrawersState();
}

class _NavigationDrawersState extends State<NavigationDrawers> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BuildHeader(context),
            BuildMenuItems(context),
          ],
        ),
      ),
    );
  }
}
Widget BuildHeader(BuildContext context)=> SizedBox(
  height: 260,
  width: 400,
  child:DrawerHeader(
    margin: EdgeInsets.all(0.0),
    padding: EdgeInsets.all(0.0),
    decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.cover,
          image:AssetImage("images/koora_logo.png"),
        ),
        color: Color(0xff1C1C1C)
    ),
    child: ListView(
      padding: EdgeInsets.only(top: 110,bottom: 110,left: 70),
      children: [
        SizedBox(height: 30,
          child: Text("KooraStore@store.com",style: TextStyle(color: Colors.grey),),),
      ],
    ),
  ),
);

Widget BuildMenuItems(BuildContext context)=> Container(
  padding: EdgeInsets.all(10),
  child: Wrap(
   runSpacing: 25 ,
  children: [
    ListTile(
      leading: Icon(Icons.settings_outlined,),
      title: Text("Settings",style: TextStyle(),),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen() ),);
      },
    ),
    ListTile(
      leading: Icon(Icons.account_box_outlined,),
      title: Text("Accounts"),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen()),);
      },
    ),
    ListTile(
      leading: Icon(Icons.update,),
      title: Text("Any Update"),
      onTap: (){},
    ),
    ListTile(
      leading: Icon(Icons.notification_add,),
      title: Text("Noficication"),
      onTap: (){},
    ),
    Divider(color: Colors.black,),
    ListTile(
      leading: Icon(Icons.question_mark,),
      title: Text("Any issues"),
      onTap: (){},
    ),
    ListTile(
      leading: Icon(Icons.logout,),
      title: Text("Logout"),
      onTap: (){},
    ),
  ],
),
);





