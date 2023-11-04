import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:studentlistapi/helpers/colors.dart';
import 'package:studentlistapi/helpers/styles.dart';

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
        actions: [
          SizedBox(width: 30,)
        ],
        title: Center(
          
          child: Text('Details',style: appBarStyle)),),

      body: Center(
        child: Container(
          
          decoration: BoxDecoration(
            color: kTealColor,
            borderRadius: BorderRadius.circular(30)
          ),
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('username:$username',style: detailsScreenTextStyle,),
           
              Text('email:$email',style: detailsScreenTextStyle),
             
              Text('city:$city',style: detailsScreenTextStyle),
              
              Text('wesite:$website',style: detailsScreenTextStyle),
           
              Text('company name$companyName',style: detailsScreenTextStyle)
            ],
          ),
        ),
      ),
    );
  }
}