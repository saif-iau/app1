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
      body: SingleChildScrollView(
        child: Flex(
          children: [
            Column(children: [
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
