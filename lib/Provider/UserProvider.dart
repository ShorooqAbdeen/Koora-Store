import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:koora_store/Controllers/FirestoreController.dart';
import 'package:koora_store/Model/Users.dart';

class UsersProvider extends ChangeNotifier {
  List<Users> userList =[];

  Future getAllUsersObjects() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
    await FirestoreController.fireStoreHelper.getAllCarts();
    userList.clear();
    for (var element in snapshot.docs) {
        userList.add(Users.fromJson(element.data()));
    }
    notifyListeners();
  }
}