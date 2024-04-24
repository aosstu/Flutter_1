import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String nombre; //param1
  final String foto; //param2

  GameCard({required this.nombre, required this.foto}); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.greenAccent, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(children: [
          Image(image: AssetImage('assets/images/contratos/${this.foto}')),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              this.nombre,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent),
            ),
          )
        ]));
  }
}