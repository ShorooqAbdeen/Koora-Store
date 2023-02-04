
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:koora_store/Controllers/FirebaseAuthController.dart';
import 'package:koora_store/Model/Users.dart';

class FirestoreController{

  FirestoreController._();
  static FirestoreController fireStoreHelper = FirestoreController._();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String userCollection = "Users";
  final String subCollection ="Cart";

  Future SaveUserData(String id,Users users) async {
  DocumentReference documentReference=await firestore.collection(userCollection).doc(id).collection(subCollection).add({
  "id": id,
  "image":users.image,
  "name1": users.name1,
  "name2": users.name2,
  "price": users.price,
  });
  }
  Future<QuerySnapshot<Map<String, dynamic>>> getAllCarts() async {
    final QuerySnapshot<Map<String, dynamic>> allCart =
    await firestore.collection(userCollection).doc(FirebaseAuthController().userId()).collection(subCollection).get();
    return allCart;
  }
  Future delete (String id)async{
    await firestore.collection(userCollection).doc(FirebaseAuthController().userId()).collection(subCollection).doc(id).delete();
    }
  }

