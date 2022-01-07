import 'package:libary_messaging_system/common/repository/firestore_repository.dart';
import 'package:libary_messaging_system/screens/authentication/models/auth_model.dart';

class AuthRepository {
  static Future addUser(String email) async {
    await FirestoreRepository.usersCollection
        .doc(email)
        .get()
        .then((docSnapshot) {
      if (!docSnapshot.exists) {
        FirestoreRepository.usersCollection.doc(email).set({'okay': 2});
      }
    });
  }

  static List<AuthModel> authModelList = [
    AuthModel(
      passcode: 111,
      email: 'receptionist@funaablibrary.com',
      password: 'password',
    ),
    AuthModel(
      passcode: 222,
      email: 'e-learning@funaablibrary.com',
      password: 'password',
    ),
    AuthModel(
      passcode: 333,
      email: 'technical@funaablibrary.com',
      password: 'password',
    ),
  ];
}
