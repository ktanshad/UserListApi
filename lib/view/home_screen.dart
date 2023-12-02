import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentlistapi/controller/userlist_provider.dart';
import 'package:studentlistapi/helpers/colors.dart';
import 'package:studentlistapi/helpers/styles.dart';
import 'package:studentlistapi/view/userdetails_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text( 'User List',style:appBarStyle ,))),
      body: Column(
        children: [
          Consumer<UserListProvider>(
            builder: (context, value, child) {
              return   Expanded(
                child: ListView.builder(
                itemCount:value.studentList.length,
                itemBuilder:(context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder:(context) =>UserDetailsScreen(
                        city: value.studentList[index].address.city,
                        companyName: value.studentList[index].company.name,
                        email: value.studentList[index].email,
                        username: value.studentList[index].username,
                        website: value.studentList[index].website,
                        lat: value.studentList[index].address.geo.lat,
                        lng: value.studentList[index].address.geo.lat,
                    
                      ),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                         decoration: BoxDecoration(
                          color:kTealColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: ListTile(
                          title: Text('${value.studentList[index].name}',style: homeSceenTextStyle,),
                          subtitle: Text('${value.studentList[index].phone}',style:homeSceenTextStyle,),
                        ),
                      ),
                    ),
                  );
                },),
              );
            },
           
          ),
        ],
      ),
    );
  }
}