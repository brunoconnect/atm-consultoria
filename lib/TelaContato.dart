import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Image.asset("assets/images/detalhe_contato.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Contato",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("atendimento@atmconsultoria.com.br"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Telefone: (61) 3522-8569"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Celular: (61) 99965-5236"),
            ),
          ]),
        ),
      ),
    );
  }
}
