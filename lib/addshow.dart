import 'package:app1/fetch.dart';
import 'package:app1/search.dart';
import 'package:app1/widgettiles.dart';
import 'package:flutter/material.dart';

void addshow(String name) async {
  List<String> temp = await fetch().getdata(name) as List<String>;
  print(temp);
  setState(() {
    mylist.add(widgetTiles(
      name: name,
      genre: temp[0],
      language: temp[1],
      rating: temp[2],
      status: temp[3],
      image: temp[4],
    ));
  });
}
