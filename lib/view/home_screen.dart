import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentlistapi/controller/userlist_provider.dart';
import 'package:studentlistapi/view/userdetails_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text( 'User List',style:TextStyle(fontWeight:FontWeight.bold) ,))),
      body: Consumer<UserListProvider>(
        builder: (context, value, child) {
          return   ListView.builder(
          itemCount:value.studentList.length,
          itemBuilder:(context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) =>UserDetailsScreen(
                  city: value.studentList[index].city,
                  companyName: value.studentList[index].companyName,
                  email: value.studentList[index].email,
                  username: value.studentList[index].username,
                  website: value.studentList[index].website,
                  lat: value.studentList[index].lat,
                  lng: value.studentList[index].lng,

                ),));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                   decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text('${value.studentList[index].name}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                    subtitle: Text('${value.studentList[index].phone}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                  ),
                ),
              ),
            );
          },);
        },
       
      ),
    );
  }
}