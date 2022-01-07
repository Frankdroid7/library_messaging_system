import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libary_messaging_system/Utils/constants.dart';

class FirestoreRepository {
  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  static CollectionReference usersCollection =
      firebaseFirestore.collection(FirestoreConstants.USERS);
}
