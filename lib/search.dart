import 'package:app1/fetch.dart';
import 'package:app1/widgettiles.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<widgetTiles> mylist = [];

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

  final TextEditingController userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 6, 6),
        leading: const Icon(Icons.live_tv_rounded),
        title: const Text('TV show fnder'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Flex(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: TextFormField(
                    cursorColor: Color.fromARGB(255, 148, 13, 4),
                    controller: userInput,
                    decoration: const InputDecoration(
                      hintText: "Enter a show",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.white),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mylist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return mylist[index];
                  },
                ),
              ),
            ]),
          ],
          direction: Axis.vertical,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 141, 17, 8),
        onPressed: () {
          setState(() {
            if (userInput.text.trim().isNotEmpty) {
              addshow(userInput.text);
            }

            userInput.clear();
          });
        },
        child: const Text('click'),
      ),
    ));
  }
}
