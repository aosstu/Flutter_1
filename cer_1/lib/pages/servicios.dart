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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Servicios Disponibles',
          style: TextStyle(color: Colors.white),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Armamento(
                                    asesinoSeleccionado: asesinoSeleccionado,
                                    asesinoIndex: asesinoIndex,
                                  )));
                    },
                    child: Text(
                      'Armamento',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 16),
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
                    child:
                        Text('Armadura', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
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
                    child: Text('Cartografía',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 16),
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
                    child:
                        Text('Medicina', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
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
                    child: Text('Vestimenta',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 16),
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
                    child:
                        Text('Comida', style: TextStyle(color: Colors.black)),
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
