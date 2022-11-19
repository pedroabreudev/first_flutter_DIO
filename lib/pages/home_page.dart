import 'package:flutter/material.dart';

import '../service/make_number_random.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numberRandom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      body: Center(child: Text(numberRandom.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            numberRandom = MakeNumberRandomService.makeNumberRandom(1000);
          });
        },
      ),
    );
  }
}
