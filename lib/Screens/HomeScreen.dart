import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          appBar: AppBar(
            title: Image.asset("images/koora_logo.png",width: 200,),
            backgroundColor: Color(0xff1C1C1C),
            elevation: 5,
            centerTitle: true,
          ),
          drawer: NavigationDrawers(),
        )
    );
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
Widget BuildHeader(BuildContext context)=> DrawerHeader(
  decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image:AssetImage("images/koora_logo.png"),
      ),
      color: Color(0xff1C1C1C)
  ),
  child: ListView(
    padding: EdgeInsets.symmetric(horizontal: 70),
    children: [
      SizedBox(height: 10,),
      Container(
        decoration: BoxDecoration(
          color: Colors.indigo,
        ),
      ),
      SizedBox(height: 10,),
    ],
  ),
);

Widget BuildMenuItems(BuildContext context)=> Column(
  children: [
    ListTile(
      leading: Icon(Icons.settings,color: Colors.black,),
      title: Text("Settings"),
      onTap: (){},
    ),
    SizedBox(height: 5,),
    ListTile(
      leading: Icon(Icons.account_box,color: Colors.black,),
      title: Text("Accounts"),
    ),
    SizedBox(height:5,),
    ListTile(
      leading: Icon(Icons.question_mark,color: Colors.black,),
      title: Text("Any issues"),
    ),
    SizedBox(height: 5,),
    ListTile(
      leading: Icon(Icons.logout,color: Colors.black,),
      title: Text("Logout"),
    ),
  ],
);





