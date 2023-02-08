import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaEmpresa()));
  }

  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaServico()));
  }

  void _abrirCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaCliente()));
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirEmpresa,
                        child: Image.asset("assets/images/menu_empresa.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirServico,
                        child: Image.asset("assets/images/menu_servico.png"),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset("assets/images/menu_cliente.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("assets/images/menu_contato.png"),
                      ),
                    ]),
              )
            ]),
      ),
    );
  }
}
