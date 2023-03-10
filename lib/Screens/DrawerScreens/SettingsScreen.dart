import 'package:flutter/material.dart';
class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back),),
          title: Text("Settings"),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.7),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.language_outlined),
                title: Text("Language"),
                subtitle: Text("English",style: TextStyle(color: Colors.grey),),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.phone_android_outlined),
                title: Text("Use System Theme"),
                trailing: Icon(Icons.toggle_on_outlined, size:45),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.security_outlined),
                title: Text("Security"),
                subtitle: Text("Fingerprint"),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.fingerprint_outlined),
                title: Text("Use fingerprint"),
                trailing: Icon(Icons.toggle_on, size:50,color: Colors.blue,),
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
