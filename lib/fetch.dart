import 'dart:convert';

import 'package:app1/show.dart';
import 'dart:convert' as convert;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

import 'fetch.dart';

class fetch {
  Future<List<String>?> getdata(String showname) async {
    var url = 'http://api.tvmaze.com/search/shows?q=$showname';

    var response = await http.get(Uri.parse(url));

    var jsondata = jsonDecode(response.body);
    var info = jsondata[0]['show'];
    List<String>? show1;

    if (response.statusCode == 200) {
      print(info['genres'][0]);
      print(info['language']);
      print(info['rating']['average'].toString());
      print(info['status']);
      //----------------------------------

      show1 = [
        info['genres'][0],
        info['language'],
        info['rating']['average'].toString(),
        info['status'],
        info['image']['original'].toString(),
      ];
    } else {
      print('Request failed: ${response.statusCode}');
    }
    return show1;
  }
}
