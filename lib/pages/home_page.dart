import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text(
          "Meu App",
          style: GoogleFonts.roboto(),
        ),
      ),
      body: Center(
          child: Text(
        numberRandom.toString(),
        style: GoogleFonts.acme(fontSize: 25),
      )),
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
