import 'package:flutter/material.dart';
import 'package:studentlistapi/model/userlist_model.dart';
import 'package:studentlistapi/services/userlist_provider.dart';

class UserListProvider extends ChangeNotifier{
  List<UserModel> studentList=[];
  UserListServices userListServices=UserListServices();


  UserListProvider(){
    getData();
  }

  Future getData()async{
     final jsondecode=await userListServices.getData();
    studentList=(jsondecode as List).map((e){

      return UserModel.fromJson(e as Map<String,dynamic>);
    }).toList();
   notifyListeners();
  }

  
 

}