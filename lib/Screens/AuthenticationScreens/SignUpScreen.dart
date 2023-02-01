import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:koora_store/Controllers/FirebaseAuthController.dart';
import 'package:koora_store/Screens/AuthenticationScreens/SignInScreen.dart';

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
          padding: EdgeInsetsDirectional.only(start: 30, end: 30, top: 30,bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _email1,
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
                controller: _password1,
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
                  onPressed: ()async{
                    await  performCreateAccount();
                  },
                  child: Text("done",style: TextStyle(
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()),);


    }
  }



}

