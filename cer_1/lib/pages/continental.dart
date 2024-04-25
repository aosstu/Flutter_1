import 'package:cer_1/pages/servicios/h1.dart';
import 'package:cer_1/pages/servicios/h2.dart';
import 'package:cer_1/pages/servicios/h3.dart';
import 'package:cer_1/pages/servicios/h4.dart';
import 'package:cer_1/widgets/mi_drawer.dart';
import 'package:flutter/material.dart';

class Hoteles extends StatelessWidget {
  const Hoteles(
      {super.key,
      required this.asesinoSeleccionado,
      required this.asesinoIndex});
  final String asesinoSeleccionado;
  final int asesinoIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Hoteles Disponibles',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/barra.png'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => H1()));
                    },
                    child: Text(
                      'Continental NYC',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => H2()));
                    },
                    child: Text('Continental Osaka',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Espacio entre las filas de botones
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => H3()));
                    },
                    child: Text('Continental Roma',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 10), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => H4()));
                    },
                    child: Text('Continental Casablanca',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MiDrawer(
          asesinoSeleccionado: asesinoSeleccionado, asesinoIndex: asesinoIndex),
    );
  }
}
