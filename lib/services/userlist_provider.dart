import 'package:dio/dio.dart';

class UserListServices{
Dio _dio=Dio();

    Future<dynamic> getData()async{
    String url='https://jsonplaceholder.typicode.com/users';
    var response=await _dio.get(url);
    var jsondecode=response.data;
    return jsondecode; 
  }
}