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
  var numeroCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu App",
          style: GoogleFonts.roboto(),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Ações do Usuário",
              style: GoogleFonts.acme(fontSize: 25),
            ),
            Text(
              "Foi clicado $numeroCliques vezes",
              style: GoogleFonts.acme(fontSize: 25),
            ),
            Text(
              "O número gerado foi: $numberRandom",
              style: GoogleFonts.acme(fontSize: 25),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  child: Text(
                    "10",
                    style: GoogleFonts.acme(fontSize: 15),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Text(
                    "20",
                    style: GoogleFonts.acme(fontSize: 15),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    "30",
                    style: GoogleFonts.acme(fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            numeroCliques = numeroCliques + 1;
            numberRandom = MakeNumberRandomService.makeNumberRandom(1000);
          });
        },
      ),
    );
  }
}
