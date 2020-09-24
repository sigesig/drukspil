import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  

  Future<void> sendSuggest(String gameName, String description) async{
    CollectionReference gameSuggest = FirebaseFirestore.instance.collection('GameSuggest');
    return await gameSuggest.add({
      'gameName': gameName,
      'description': description,
    });
  }

  Future<void> sendFeedback(String subject, String comment) async{
    CollectionReference feedback = FirebaseFirestore.instance.collection('Feedback');
    return await feedback.add({
      'subject': subject,
      'comment': comment,
    });
  }

}