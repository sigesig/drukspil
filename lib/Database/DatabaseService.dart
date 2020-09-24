import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseService{
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  FirebaseFirestore databaseRefrence = FirebaseFirestore.instance;

  Future sendSuggest(String gameName, String description) async{
    return await databaseRefrence.collection("GameSuggest").add({
      'gameName': gameName,
      'description': description,
    });

  }
  Future sendFeedback(String subject, String comment) async{
    return await databaseRefrence.collection("Feedback").add({
      'subject': subject,
      'comment': comment,
    });
  }

}