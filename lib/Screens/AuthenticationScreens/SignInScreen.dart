import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:koora_store/Controllers/FirebaseAuthController.dart';
import 'package:koora_store/Screens/AuthenticationScreens/SignUpScreen.dart';
import 'package:koora_store/Screens/BottomNavigationScreens/BottomNavagtionScreen.dart';
import 'package:koora_store/Screens/HomeScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController? _email;
  TextEditingController? _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _email= TextEditingController();
    _password =TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email?.dispose();
    _password?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsDirectional.only(start: 30, end: 30, top: 30,bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsetsDirectional.only(start: 50),
                    hintText: "Email Address",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0,
                        color:Colors.grey,
                      ),
                    ) ,
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsetsDirectional.only(start: 50),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0,
                        color:Colors.grey,
                      ),
                    ) ,
                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async{
                      await performLogin();
                    },
                    child: Text("Login",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFecb7bf),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 15 ,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: ()async{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()),);
                    },
                    child: Text("dont have account sign UP",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFecb7bf),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Future performLogin()async{
    if(checkData()){
      await login();
    }
  }
  bool checkData(){
    if(_email!.text.isNotEmpty && _password!.text.isNotEmpty){
      return true;
    }
    return false;
  }
  Future login() async{
    UserCredential? userCredential = await FirebaseAuthController().signIn(_email!.text, _password!.text);
    if(userCredential != null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()),);
    }
  }
  }













