import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libary_messaging_system/common/repository/firestore_repository.dart';

class AddBroadcastRepository {
  static Future addBroadcast(
      {required String documentId, required String broadcastMessage}) async {
    return await FirestoreRepository.usersCollection.doc(documentId).update(
      {
        'Broadcast-Message': FieldValue.arrayUnion([broadcastMessage])
      },
    );
  }
}
