import 'package:flutter/material.dart';

class ListCourses{
  final List<Map<String, dynamic>> courses = [
    {
      'name': 'Curso Flutter',
      'route': '/flutter',
      'color':
          Color.fromARGB(255, 6, 131, 233), // Cor personalizada para Flutter
    },
    {
      'name': 'Curso Python',
      'route': '/python',
      'color':
          Color.fromARGB(255, 63, 235, 69), // Cor personalizada para Python
    },
    {
      'name': 'Curso Java',
      'route': '/java',
      'color': Colors.red, // Cor personalizada para Java
    }, /*   
    {
      'name': 'Teste',
      'route': '/java',
      'color': Colors.red, // Cor personalizada para Java
    },*/
  ];
}