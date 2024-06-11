import 'package:aula1006/creditos.dart';
import 'package:aula1006/resultado.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_pa
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  TextEditingController controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Créditos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Creditos()),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Resultado:'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controlador,
            onChanged: (String texto) {
              setState(() {});
            },
          ),
          Text(controlador.text),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultado(controlador.text),
                  ),
                );
              },
              child: Text('Verificar')),
        ],
      ),
    );
  }
}
