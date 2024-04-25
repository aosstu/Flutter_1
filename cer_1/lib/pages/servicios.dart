import 'package:cer_1/pages/servicios/armadura.dart';
import 'package:cer_1/pages/servicios/armamento.dart';
import 'package:cer_1/pages/servicios/cartografia.dart';
import 'package:cer_1/pages/servicios/comida.dart';
import 'package:cer_1/pages/servicios/medicina.dart';
import 'package:cer_1/pages/servicios/vestimenta.dart';
import 'package:cer_1/widgets/mi_drawer.dart';
import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Armamento(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text('Armamento'),
                  ),
                ),
                SizedBox(width: 16), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Armadura(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text('Armadura'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16), // Espacio entre las filas de botones
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Cartografia(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text('Cartografía'),
                  ),
                ),
                SizedBox(width: 16), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Medicina(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text('Medicina'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16), // Espacio entre las filas de botones
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Vestimenta(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text('Vestimenta'),
                  ),
                ),
                SizedBox(width: 16), // Espacio entre los botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Comida(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text('Comida'),
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
