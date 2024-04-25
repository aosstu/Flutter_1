import 'dart:convert';

import 'package:cer_1/pages/alta_mesa.dart';
import 'package:flutter/material.dart';

List<String> cabros = [
  "The Shinobi",
  "Chidi",
  "Zero",
  "The Adjudicator",
  "The Harbinger",
  "Killa Harkan",
  "Vincent Bisset de Gramont",
  "Caine"
];

class Asesino {
  String texto;
  int valor;

  Asesino(this.texto, this.valor);
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController locosController = TextEditingController();
  String? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(
            child: DropdownButton<String>(
              value: selectedIndex,
              hint: const Text('Select a asesino'),
              onChanged: (newValue) {
                setState(() {
                  selectedIndex = newValue;
                });
              },
              items: [
                DropdownMenuItem<String>(
                    value: "The Shinobi", child: Text("The Shinobi")),
                DropdownMenuItem<String>(value: "Chidi", child: Text("Chidi")),
                DropdownMenuItem<String>(value: "Zero", child: Text("Zero")),
                DropdownMenuItem<String>(
                    value: "The Adjudicator", child: Text("The Adjudicator")),
                DropdownMenuItem<String>(
                    value: "The Harbinger", child: Text("The Harbinger")),
                DropdownMenuItem<String>(
                    value: "Killa Harkan", child: Text("Killa Harkan")),
                DropdownMenuItem<String>(
                    value: "Vincent Bisset de Gramont",
                    child: Text("Vincent Bisset de Gramont")),
                DropdownMenuItem<String>(value: "Caine", child: Text("Caine"))
              ],
            ),
          ),
          OutlinedButton(
              onPressed: selectedIndex != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AltaMesa(
                            asesinoSeleccionado: selectedIndex!,
                          ),
                        ),
                      );
                    }
                  : null,
              child: Text('login'))
        ],
      ),
    );
  }
}
