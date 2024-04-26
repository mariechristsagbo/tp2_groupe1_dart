import 'package:flutter/material.dart';
import 'package:election/listecandidats.dart';
import 'package:election/formulaire.dart';
import 'package:election/Candidats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Election',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Candidats(),
    );
  }
}
