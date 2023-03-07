import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proj3/components/users.dart';

class DatabaseService {

  final String? uid;
  DatabaseService({ this.uid });

  //collection reference
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  //user data added to collection users when signed up
  Future updateUserData(String userID, String name, String email) async {
    return await userCollection.doc(uid).set({
      'userID': userID,
      'name': name,
      'email': email,
    });
  }

  //get users stream
  Stream<QuerySnapshot> get users {
    return userCollection.snapshots();
  }

  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('users')
      .snapshots()
      .map((snapshot) =>
        snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
  
  Future<User?> readUser() async {
    final docUser = FirebaseFirestore.instance.collection('users').doc(uid);
    final snapshot = await docUser.get();

    if (snapshot.exists) {
      return User.fromJson(snapshot.data()!);
    }
    return null;
  }
}