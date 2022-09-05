import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Database {
  static String? userUid;
  FirebaseFirestore? firestore;
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> create(
      String username, String email, String address, String contact) async {
    try {
      await firestore!
          .collection("ServiceProvider")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        "username": username,
        "email": email,
        "address": address,
        "contact": contact,
      });
    } catch (e) {
      print(e);
    }
  }

  Future postDetailsToFirestore(String image, String emailtxt, String passtxt,
      String username, String address, String cell) async {
    await _auth.createUserWithEmailAndPassword(
        email: emailtxt, password: passtxt);
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    await firebaseFirestore.collection("Admin").doc(user!.uid).set({
      'username': username,
      'email': emailtxt,
      'address': address,
      'contact': cell
    });
  }

  Future RegisterDoc(
      String image,
      String name,
      String category,
      String experience,
      String cell,
      String days,
      String from,
      String to) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    await firebaseFirestore
        .collection('doctor')
        .doc('category')
        .collection(category)
        .doc()
        .set({
      'image': image,
      'name': name,
      'category': category,
      'experience': experience,
      'contact': cell,
      'days': days,
      'from': from,
      'to': to,
    });
  }

  Future<void> approve(String from, String to, String project,
      String additionalInfo, String date) async {
    try {
      await firestore!
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("ApproveEntery")
          .add({
        "from": from,
        "to": to,
        "project": project,
        "additionalInfo": additionalInfo,
        "date": date,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<List> read() async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot = await firestore!.collection('doctor').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "image": doc['image'],
            "name": doc["name"],
            "category": doc["category"],
            "experience": doc["experience"],
            "contact": doc["contact"]
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return docs;
  }

  Future<List> readEntry() async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot = await firestore!
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('newEntry')
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "from": doc['from'],
            "to": doc["to"],
            "project": doc["project"],
            "additionalInfo": doc["additionalInfo"],
            "date": doc["date"]
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return docs;
  }

  Future readUser() async {
    var querySnapshot;
    try {
      querySnapshot = await firestore!
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      if (querySnapshot.isNotEmpty) {
        return querySnapshot;
      }
    } catch (e) {
      print(e);
    }
    return querySnapshot;
  }

  Future<List> readFromUser(String docid) async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot = await firestore!
          .collection('users')
          .doc(docid)
          .collection('newEntry')
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "from": doc['from'],
            "to": doc["to"],
            "project": doc["project"],
            "additionalInfo": doc["additionalInfo"],
            "date": doc["date"]
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return docs;
  }

  Future<void> update(String id, String from, String to, String project,
      String additionalInfo, String date) async {
    try {
      await firestore!
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('ApproveEntery')
          .doc(id)
          .update({
        "from": from,
        "to": to,
        "project": project,
        "additionalInfo": additionalInfo,
        "date": date
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> delete(String id) async {
    try {
      await firestore!
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("newEntry")
          .doc(id)
          .delete();
    } catch (e) {
      print(e);
    }
  }
}
