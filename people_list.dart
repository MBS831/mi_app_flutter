import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  
  final _suggestions = <String>[];
  final _randomNames = RandomNames(Zone.catalonia);
  final Set<String> _favorites = {}; // emmagatzema preferits

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i >= _suggestions.length) {
          for (var j = 0; j < 10; j++) {
            // 10 noms mes
            _suggestions.add(_randomNames.womanName());
          }
        }

        final name = _suggestions[i];
        final isFavorite = _favorites.contains(name);

        return ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 248, 247, 248),
                ),
              ),
              // Botó "like"
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: isFavorite
                      ? Colors.red // vermell preferit
                      : Colors.white, // Blanc no ho es
                ),
                onPressed: () {
                  setState(() {
                    if (isFavorite) {
                      _favorites.remove(name); // treu de preferits
                    } else {
                      _favorites.add(name); // afageix a preferits
                    }
                  });
                  print(isFavorite
                      ? 'He eliminat $name dels meus preferits'
                      : 'Magrada $name');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
