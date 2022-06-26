import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<widgetTiles> mylist = [
    widgetTiles(name: 'omar'),
    widgetTiles(name: 'abdul latif'),
    widgetTiles(name: 'moussa'),
  ];

  final TextEditingController userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 116, 6, 6),
          leading: const Icon(Icons.live_tv_rounded),
          title: const Text('API application'),
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: TextFormField(
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
            padding: EdgeInsets.all(15),
            child: ListView.builder(
              itemCount: mylist.length,
              itemBuilder: (BuildContext context, int index) {
                return mylist[index];
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class widgetTiles extends StatelessWidget {
  widgetTiles({required this.name});

  String name = "saif";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: ListTile(
        leading: Text(name),
      ),
    );
  }
}
