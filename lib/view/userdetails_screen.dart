import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  String username;
  String email;
  String city;
  String website;
  String companyName;
  String lat;
  String lng;
  UserDetailsScreen({super.key,
  required this.username,
  required this.email,
  required this.city,
  required this.website,
  required this.companyName,
  required this.lat,
  required this.lng
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details',style: TextStyle(fontWeight:FontWeight.bold),)),),

      body: Center(
        child: Container(
          
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(30)
          ),
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('username:$username',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
           
              Text('email:$email',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
             
              Text('city:$city',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
              
              Text('wesite:$website',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
           
              Text('company name$companyName',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}