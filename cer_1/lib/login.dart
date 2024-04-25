import 'package:cer_1/pages/alta_mesa.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 430),
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/barra.png')),
            Center(
              child: DropdownButton<String>(
                focusColor: Colors.blue,
                dropdownColor: Colors.grey,
                iconEnabledColor: Colors.deepOrange,
                iconDisabledColor: Colors.indigo,
                value: selectedIndex,
                hint: const Text(
                  'Selecciona un Asesino',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (newValue) {
                  setState(() {
                    selectedIndex = newValue;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                      value: "The Shinobi",
                      child: Text("The Shinobi",
                          style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "Chidi",
                      child:
                          Text("Chidi", style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "Zero",
                      child:
                          Text("Zero", style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "The Adjudicator",
                      child: Text("The Adjudicator",
                          style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "The Harbinger",
                      child: Text("The Harbinger",
                          style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "Killa Harkan",
                      child: Text("Killa Harkan",
                          style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "Vincent Bisset de Gramont",
                      child: Text("Vincent Bisset de Gramont",
                          style: TextStyle(color: Colors.white))),
                  DropdownMenuItem<String>(
                      value: "Caine",
                      child:
                          Text("Caine", style: TextStyle(color: Colors.white)))
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
                child: Text('login', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
