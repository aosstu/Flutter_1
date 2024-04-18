import 'package:cer_1/pages/alta_mesa.dart';
import 'package:flutter/material.dart';

enum Locos {
  loco1,
  loco2,
  loco3,
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController locosController = TextEditingController();
  Locos? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nombre')),
      body: Row(
        children: [
          Center(
            child: DropdownButton<Locos>(
              value: selectedIndex,
              hint: const Text('Select a loco'),
              onChanged: (Locos? loco) {
                setState(() {
                  selectedIndex = loco;
                });
              },
              items: Locos.values.map((Locos loco) {
                return DropdownMenuItem<Locos>(
                  value: loco,
                  child: Text(loco.toString().split('.').last),
                );
              }).toList(),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AltaMesa(
                          locoSeleccionado: selectedIndex ?? Locos.loco1)),
                );
              },
              child: Text('login'))
        ],
      ),
    );
  }
}
