import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:studentlistapi/model/userlist_model.dart';

class UserListProvider extends ChangeNotifier{
  List<UserModel> studentList=[];


  UserListProvider(){
    getData();
  }

  Future getData()async{
    String url='https://jsonplaceholder.typicode.com/users';
    var response=await http.get(Uri.parse(url));
    var jsondecode=jsonDecode(response.body);
    studentList=(jsondecode as List).map((e){

      return UserModel.fromJson(e as Map<String,dynamic>);
    }).toList();
   notifyListeners();
  }

  
 

}