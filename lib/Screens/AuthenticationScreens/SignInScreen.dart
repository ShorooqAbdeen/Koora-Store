import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          padding: EdgeInsetsDirectional.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.8),
                    radius: 70,

                    child:Image.asset("images/yallow.png") ,
                  ),
                ),
                // Image.asset("images/koora_logo_removebg.png"),
                SizedBox(height: 30,),
                TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsetsDirectional.only(start: 50),
                    labelText: "Email",
                    hintText: "Username or e-mail",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                    ),
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(FontAwesomeIcons.user, color: Colors.grey,size: 15,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color:Colors.black,
                      ),
                    ) ,
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  controller: _password,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsetsDirectional.only(start: 50),
                    labelText: "Password",
                    hintText: "password",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                    ),
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.key_outlined, color: Colors.grey,size: 15,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color:Colors.black,
                      ),
                    ) ,
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password ?",style: TextStyle(
                        color: Colors.blue.shade400,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        onPressed: () async{
                          await performLogin();
                        },
                        color: Colors.black.withOpacity(.7),
                        height: 45,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                        child: Text("Login",style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 25 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have an account ?",style: TextStyle(color: Colors.grey,fontSize: 14),),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()),);
                      },
                      child: Text("Register",style: TextStyle(color: Colors.blue.shade400,fontSize: 16,fontWeight: FontWeight.w600),),
                  ),
                    ],
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













