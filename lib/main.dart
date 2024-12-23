import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftnect_app/screens/admin/admin.dart';
import 'package:craftnect_app/screens/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart'; //

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final CollectionReference users = db.collection('product');
  final DocumentSnapshot snapshot = await users.doc('tracking').get();
  final userFields = snapshot.data();
  if (userFields != null) {
    print(userFields.toString());
  } else {
    print('Document exists but contains no data.');
  }
  // log(userFields.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminPage(),
    );
  }
}
