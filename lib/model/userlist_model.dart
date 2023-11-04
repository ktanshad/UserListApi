class UserModel{
  String name='';
  String phone='';
  String username='';
  String email='';
  String city='';
  String website='';
  String companyName='';
  String lat='';
  String lng='';

  UserModel({
    required this.name,
    required this.phone,
    required this.username,
    required this.email,
    required this.city,
    required this.website,
    required this. companyName,
    required this.lat,
    required this.lng,
  });

  UserModel.fromJson(Map<String, dynamic>json){
    name=json['name'];
    phone=json['phone'];
    username=json['username'];
    email=json['email'];
    city=json['address']['city'];
    website=json['website'];
    companyName=json['company']['name'];
    lat=json['address']['geo']['lat'];
    lng=json['address']['geo']['lng'];
  }
}