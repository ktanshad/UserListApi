// class UserModel{
//   String name='';
//   String phone='';
//   String username='';
//   String email='';
//   String city='';
//   String website='';
//   String companyName='';
//   String lat='';
//   String lng='';

//   UserModel({
//     required this.name,
//     required this.phone,
//     required this.username,
//     required this.email,
//     required this.city,
//     required this.website,
//     required this. companyName,
//     required this.lat,
//     required this.lng,
//   });

//   UserModel.fromJson(Map<String, dynamic>json){
//     name=json['name'];
//     phone=json['phone'];
//     username=json['username'];
//     email=json['email'];
//     city=json['address']['city'];
//     website=json['website'];
//     companyName=json['company']['name'];
//     lat=json['address']['geo']['lat'];
//     lng=json['address']['geo']['lng'];
//   }
// }


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
 part 'userlist_model.freezed.dart';
part 'userlist_model.g.dart';

@freezed
class UserModel with _$UserModel{
  const factory UserModel({
    required int id,
    required String name,
    required String username,
    required Address address,
    required String phone,
    required String website,
    required Company company,
    required String email

  })= _UserModel;

  factory UserModel.fromJson(Map<String,dynamic>json)=>_$UserModelFromJson(json);
}

@freezed 
class Address with _$Address{
  const factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required Geo geo,
  }) = _Address;

  factory Address.fromJson(Map<String,dynamic>json)=>_$AddressFromJson(json);
}

@freezed 
class Geo with _$Geo{
  const factory Geo({
    required String lat,
    required String lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String,dynamic>json)=>_$GeoFromJson(json);
}

 @freezed 
 class Company with _$Company{
  const factory Company({
    required String name,
    required String catchPhrase,
    required String bs,
  }) =_Company;

  factory Company.fromJson(Map<String,dynamic> json)=>_$CompanyFromJson(json);
 }