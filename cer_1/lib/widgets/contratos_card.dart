import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';

class ContratosCard extends StatelessWidget {
  final String nombre; //param1
  final String foto; //param2
  final String estado;
  final String paga;
  final String nacionalidad;
  final String bandera;
  ContratosCard(
      {required this.nombre,
      required this.foto,
      required this.estado,
      required this.paga,
      required this.nacionalidad,
      required this.bandera}); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(children: [
          Image(image: AssetImage('assets/images/contratos/${this.foto}')),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              this.nombre,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent),
            ),
          ),
          Text(
            'Estado: ${this.estado}',
            style: TextStyle(fontSize: 26),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nacionalidad: ${this.nacionalidad}',
                style: TextStyle(fontSize: 26),
              ),
              CountryFlag.fromCountryCode(
                this.bandera,
                height: 48,
                width: 62,
                borderRadius: 8,
              )
            ],
          ),
          Text(
            'Recompensa: ${this.paga}',
            style: TextStyle(fontSize: 26),
          ),
        ]));
  }
}
