import 'package:flutter_test/flutter_test.dart';
import 'package:studentlistapi/model/userlist_model.dart';

void main() {
  group('UserModel', () {
    test('fromJson should create a UserModel instance from JSON', () {
      final json = {
        'id': 1,
        'name': 'John Doe',
        'username': 'johndoe',
        'address': {
          'street': '123 Main St',
          'suite': 'Apt 4',
          'city': 'Cityville',
          'zipcode': '12345',
          'geo': {'lat': '40.7128', 'lng': '-74.0060'}
        },
        'phone': '123-456-7890',
        'website': 'www.example.com',
        'company': {
          'name': 'ABC Inc',
          'catchPhrase': 'Turning ideas into reality',
          'bs': 'Innovate and succeed'
        },
        'email': 'john.doe@example.com',
      };

      final userModel = UserModel.fromJson(json);

      expect(userModel.id, 1);
      expect(userModel.name, 'John Doe');
      expect(userModel.username, 'johndoe');

      // Asserting Address
      expect(userModel.address.street, '123 Main St');
      expect(userModel.address.suite, 'Apt 4');
      expect(userModel.address.city, 'Cityville');
      expect(userModel.address.zipcode, '12345');
      expect(userModel.address.geo.lat, '40.7128');
      expect(userModel.address.geo.lng, '-74.0060');

      expect(userModel.phone, '123-456-7890');
      expect(userModel.website, 'www.example.com');

      // Asserting Company
      expect(userModel.company.name, 'ABC Inc');
      expect(userModel.company.catchPhrase, 'Turning ideas into reality');
      expect(userModel.company.bs, 'Innovate and succeed');

      expect(userModel.email, 'john.doe@example.com');
    });
  });
}
