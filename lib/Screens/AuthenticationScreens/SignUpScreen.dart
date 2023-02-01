import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koora_store/Controllers/FirebaseAuthController.dart';
import 'package:koora_store/Screens/AuthenticationScreens/SignInScreen.dart';
import 'package:koora_store/Screens/HomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? _email1;
  TextEditingController? _password1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _email1= TextEditingController();
    _password1 =TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email1?.dispose();
    _password1?.dispose();
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
                  controller: _email1,
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
                        width: 1.5,
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
                  controller: _password1,
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
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  // controller: _password1,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsetsDirectional.only(start: 50),
                    labelText: "confirm Password",
                    hintText: "confirm Password",
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
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () async{
                        await performCreateAccount();
                      },
                      color: Colors.black.withOpacity(.7),
                      height: 45,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 140),
                      child: Text("Register",style: TextStyle(
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
                SizedBox(height: 20,),
                // TextButton(
                //   onPressed: (){
                //     Navigator.pushReplacementNamed(context, "/sign_in_screen");
                //   },
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text("S͟i͟g͟n͟ i͟n͟ ",style: TextStyle(
                //         color: Colors.blue.shade400,
                //         fontSize: 17,
                //         fontWeight: FontWeight.bold,
                //       ),),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future performCreateAccount()async{
    if(checkData()){
      await createAccount();
    }
  }
  bool checkData(){
    if(_email1!.text.isNotEmpty && _password1!.text.isNotEmpty){
      return true;
    }
    return false;
  }
  Future createAccount()async{
    UserCredential? userCredential = await FirebaseAuthController().createAccount(_email1!.text, _password1!.text);
    if(userCredential != null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()),);


    }
  }



}

