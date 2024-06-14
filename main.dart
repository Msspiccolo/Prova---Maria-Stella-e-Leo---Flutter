import 'package:flutter/material.dart';
import 'package:projetoarquivos/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo de cursos',
      theme:  ThemeData(primarySwatch: Colors.amber),
      home: LoginPage(), 
    );
}
}