import 'package:flutter/material.dart';
import 'package:mi_app_flutter/people_list.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
         backgroundColor: const Color.fromARGB(255, 38, 10, 49),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 78, 17, 60),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text (
            'ELS NOMS DE DONA MÉS COMUNS A CATALUNYA',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "Arial",
            ),
            textAlign: TextAlign.center,
            ),
        ),
        body: const Center (child: PeopleList ()),
      ),
    );
  }
}
