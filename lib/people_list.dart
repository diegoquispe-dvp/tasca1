//People list Diego Quispe
import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 16);
  final _randomNames = RandomNames(Zone.spain);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //retorna el widget de una listview
      itemBuilder: (context, i) {
        //i inicialmente es 0
        //print("Construyendo elemento con índice: $i");
        if (i >= _suggestions.length) {
          //length inicialmente es 0
          //Afegim 10 noms més
          for (var i = 0; i < 10; i++) {
            _suggestions.add(_randomNames.fullName());
          }
        }
        return Column(
          children: [
            ListTile(
              title: Text(
                _suggestions[i],
                style: _biggerFont,
              ),
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
