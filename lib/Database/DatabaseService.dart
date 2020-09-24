import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final databaseReference = FirebaseFirestore.instance;

  Future sendSuggest(String gameName, String description) async{
    return await databaseReference.collection("GameSuggest").add({
      'gameName': gameName,
      'description': description,
    });
  }

  Future sendFeedback(String subject, String comment) async{
    return await databaseReference.collection("Feedback").add({
      'subject': subject,
      'comment': comment,
    });
  }

}