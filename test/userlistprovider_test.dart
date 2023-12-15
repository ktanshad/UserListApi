import 'package:flutter_test/flutter_test.dart';
import 'package:studentlistapi/controller/userlist_provider.dart';

void main() {
  group('UserListProvider', () {
    test('getData should populate studentList with data', () async {
      final userListProvider = UserListProvider();

      await userListProvider.getData();

      expect(userListProvider.studentList.isNotEmpty, true);
    });
  });
}
