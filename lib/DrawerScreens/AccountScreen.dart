
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
/*  String _lunchUrl="https://www.facebook.com/samaaliallham/";
  Future<void>_lunchInBrowser(String url)async{
      if(await canLaunch(url)){
        await launch(url, forceSafariVC: false, forceWebView: false,
            headers:<String,String>{"header_key":"header_value" });
      }
  }*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          title: Text("Account"),
          centerTitle: true,
          backgroundColor: Color(0xff1C1C1C),
        ),
        body: Padding(
          padding:  EdgeInsets.only(bottom: 20,top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
               Text("communication accounts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
               SizedBox(height: 10,),
                Container(
                  color: Colors.white.withOpacity(0.9),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.whatsapp_outlined),
                        title:Text("Whats App",style: TextStyle(color: Colors.black,fontSize: 17),),
                        onTap: (){},
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.phone_android_outlined),
                        title:Text("Jawwal",style: TextStyle(color: Colors.black,fontSize: 17),),
                        onTap: (){},
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.email_outlined),
                        title:Text("Email",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
              ),
                SizedBox(height: 20,),
                Text("social accounts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white.withOpacity(0.9),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(FontAwesomeIcons.squareInstagram),
                        title:Text("Instagram",style: TextStyle(color: Colors.black,fontSize: 17),),
                        onTap: (){},
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.squareTwitter),
                        title:Text("twitter",style: TextStyle(color: Colors.black,fontSize: 17),),
                        onTap: (){},
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.squareSnapchat),
                        title:Text("Snapshat",style: TextStyle(color: Colors.black),),
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.tiktok),
                        title:Text("Tiktok",style: TextStyle(color: Colors.black),),
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.facebook),
                        title:Text("Facebook",style: TextStyle(color: Colors.black),),
                        onTap: (){
                          // _lunchInBrowser(_lunchUrl);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("payment methods",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white.withOpacity(0.9),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(FontAwesomeIcons.paypal),
                        title:Text("Paypal",style: TextStyle(color: Colors.black,fontSize: 17),),
                        onTap: (){},
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.stripe),
                        title:Text("Strip",style: TextStyle(color: Colors.black,fontSize: 17),),
                        onTap: (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


