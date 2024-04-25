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
      appBar: AppBar(
        title: Text('Servicios Disponibles'),
      ),
      body: Column(
        children: [
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
                    child: Text('Continental NYC'),
                  ),
                ),
                SizedBox(width: 10), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => H2()));
                    },
                    child: Text('Continental Osaka'),
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
                    child: Text('Continental Roma'),
                  ),
                ),
                SizedBox(width: 10), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => H4()));
                    },
                    child: Text('Continental Casablanca'),
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
