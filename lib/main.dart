//Aplicación hecha por Diego Quispe - Flutter
import 'package:flutter/material.dart';
import 'package:tasca1/people_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generador de Nombres Españoles',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            centerTitle: true,
            //backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/spain.jpg"), fit: BoxFit.fill)),
            ),
            title: const Text('Generador de nombres españoles'),
          ),
        ),
        body: const Center(child: PeopleList()),
      ),
    );
  }
}
