
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:koora_store/Controllers/FirebaseAuthController.dart';
import 'package:koora_store/Model/Users.dart';

class FirestoreController{

  FirestoreController._();
  static FirestoreController fireStoreHelper = FirestoreController._();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String userCollection = "Users";

  Future SaveUserData(String id,Users users) async {
  DocumentReference documentReference=await firestore.collection(userCollection).doc(id).collection("Cart").add({
  "id": id,
  "name1": users.name1,
  "name2": users.name2,
  "price": users.price,
  });
  }
}