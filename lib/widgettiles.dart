import 'package:app1/fetch.dart';
import 'package:flutter/material.dart';

class widgetTiles extends StatelessWidget {
  widgetTiles({
    required this.name,
    required this.rating,
    required this.language,
    required this.status,
    required this.genre,
    required this.image,
  });

  String name = "";
  String rating = "";
  String language = "";
  String status = "";
  String genre = '';
  String image = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 156, 36, 6),
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: Text(name),
          trailing: Container(
            child: Image.network(image),
          ),
          subtitle: Column(
            children: [
              Text(
                'Rating : ' + rating,
                style: TextStyle(color: Color.fromARGB(255, 129, 6, 6)),
              ),
              Text(
                'Language : ' + language,
                style: TextStyle(color: Color.fromARGB(255, 129, 6, 6)),
              ),
              Text(
                'Status : ' + status,
                style: TextStyle(color: Color.fromARGB(255, 129, 6, 6)),
              ),
              Text(
                'Genre : ' + genre,
                style: TextStyle(color: Color.fromARGB(255, 129, 6, 6)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
