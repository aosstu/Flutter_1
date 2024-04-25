import 'package:cer_1/login.dart';
import 'package:cer_1/pages/alta_mesa.dart';
import 'package:cer_1/pages/continental.dart';
import 'package:cer_1/pages/contratos.dart';
import 'package:cer_1/pages/perfil.dart';
import 'package:cer_1/pages/servicios.dart';
import 'package:cer_1/widgets/widget1.dart';
import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  final String asesinoSeleccionado;
  final int asesinoIndex;

  const MiDrawer({
    Key? key,
    required this.asesinoSeleccionado,
    required this.asesinoIndex,
  }) : super(key: key);
  String _buscaAsessino(int asasin) {
    switch (asasin) {
      case 0:
        return 'The Shinobi';
      case 1:
        return 'Chidi';
      case 2:
        return 'Zero';
      case 3:
        return 'The Adjudicator';
      case 4:
        return 'The Harbinger';
      case 5:
        return 'Killa Harkan';
      case 6:
        return 'Vincent Bisset de Gramont';
      default:
        return 'Caine';
    }
  }

  int _asesinoBusca(String nombre) {
    switch (nombre) {
      case 'The Shinobi':
        return 0;
      case 'Chidi':
        return 1;
      case 'Zero':
        return 2;
      case 'The Adjudicator':
        return 3;
      case 'The Harbinger':
        return 4;
      case 'Killa Harkan':
        return 5;
      case 'Vincent Bisset de Gramont':
        return 6;
      default:
        return 7;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                Text(
                  asesinoSeleccionado,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                CircleAvatar(
                  radius: 50, // Tamaño del círculo
                  backgroundColor: Colors.white, // Color de fondo del círculo
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/asesinos/${asesinoSeleccionado}.jpg', // Ruta de tu imagen
                      fit: BoxFit.cover, // Ajuste de la imagen
                      width: 100, // Ancho de la imagen dentro del círculo
                      height: 100, // Alto de la imagen dentro del círculo
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Perfil',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Perfil(asesinoSeleccionado: asesinoIndex),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AltaMesa(
                    asesinoSeleccionado: asesinoSeleccionado,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Contratos',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Contratos(asesinoSeleccionado: asesinoSeleccionado),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Servicios',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Servicios(
                    asesinoSeleccionado: asesinoSeleccionado,
                    asesinoIndex: asesinoIndex,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Hoteles',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Hoteles(
                    asesinoSeleccionado: asesinoSeleccionado,
                    asesinoIndex: asesinoIndex,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Salir',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
    );
  }
}
