import 'package:cer_1/login.dart';
import 'package:flutter/material.dart';

class AltaMesa extends StatefulWidget {
  final Locos locoSeleccionado;
  const AltaMesa({Key? key, required this.locoSeleccionado}) : super(key: key);
  @override
  State<AltaMesa> createState() => _AltaMesaState();
}

class _AltaMesaState extends State<AltaMesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Has seleccionado el loco:${widget.locoSeleccionado.toString()}'),
      ),
      body: OutlinedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('salir'),
      ),
    );
  }
}
