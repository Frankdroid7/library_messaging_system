import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libary_messaging_system/common/repository/firestore_repository.dart';

class AddBroadcastRepository {
  static Future sendBroadcast(
      {required String documentId, required String broadcastMessage}) async {
    return await FirestoreRepository.usersCollection.doc(documentId).collection('broadcastMessage').doc().set(
        {'message': broadcastMessage,
        'timeStamp': FieldValue.serverTimestamp(),},);
  }
}
