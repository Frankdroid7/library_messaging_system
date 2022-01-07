import 'package:libary_messaging_system/common/repository/firestore_repository.dart';

class HomeScreenRepository {
  static Future<List<String>> getAllDepartments() async {
    List<String> departments = [];
    await FirestoreRepository.usersCollection.get().then((value) {
      departments = value.docs.map((e) => e.id).toList();
    });
    return departments;
  }
}
