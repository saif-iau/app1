import 'package:app1/search.dart';
import 'package:flutter/material.dart';

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 116, 6, 6),
          leading: const Icon(Icons.live_tv_rounded),
          title: const Text('API application'),
          centerTitle: true,
          actions: [],
        ),
        body: Container(
          padding: const EdgeInsets.all(75),
          child: Column(
            children: [
              const Icon(
                Icons.live_tv_rounded,
                color: Color.fromARGB(255, 139, 13, 4),
                size: 250,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
                },
                child: const Text(
                  'click here',
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 131, 15, 7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
