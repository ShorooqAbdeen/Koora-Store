import 'package:firebase_auth/firebase_auth.dart';
import 'package:koora_store/Screens/TabBarScreens/card_content.dart';

class FirebaseAuthController{
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> createAccount(String email, String password)async{
      try{
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        String id = userCredential.user!.uid;
        CardContent.id = id;
        return userCredential;
      }on FirebaseAuthException catch(e){
        print("creatAccount:  code"+ e.message!);
        if(e.code =="email-already-in-use"){
          print("creatAccount:  code"+ e.message!);}
        if(e.code =="invalid-email"){
          print("creatAccount:  code"+ e.message!);}
        if(e.code =="operation-not-allowed"){
          print("creatAccount:  code"+ e.message!);}
        if(e.code =="weak-password"){
          print("creatAccount:  code"+ e.message!);}
      }catch(e){
        print("Creat Accrount: Exception: $e");}

      return null;
 }
 Future<UserCredential?> signIn(String email, String password)async{
      try{
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
        String id = userCredential.user!.uid;
        CardContent.id = id;
        return userCredential;
      }on FirebaseAuthException catch(e){
        print("signIn: code"+ e.code);
        if(e.code =="user-not-found"){
          print("signIn:  code"+ e.message!);}
        if(e.code =="invalid-email"){
          print("signIn:  code"+ e.message!);}
        if(e.code =="user-disabled"){
          print("signIn:  code"+ e.message!);}
        if(e.code =="wrong-password"){
          print("signIn:  code"+ e.message!);}
      }catch(e){
          print("signIn :Exception: $e");
      }
      return null;
 }
 Future signOut()async{
    await _auth.signOut();
 }
 bool isLoggedIn(){
    return _auth.currentUser != null;
 }
}