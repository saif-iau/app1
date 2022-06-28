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
          leading: Text(name),
          trailing: Container(
            child: Image.network(image),
          ),
          subtitle: Column(
            children: [
              Text('Rating : ' + rating),
              Text('language : ' + language),
              Text('Status : ' + status),
              Text('Genre : ' + genre),
            ],
          ),
        ),
      ),
    );
  }
}
