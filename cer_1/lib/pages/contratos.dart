import 'package:cer_1/widgets/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'package:cer_1/pages/cosas/locos.dart';

List<dynamic> asesinos = [
  {
    'nombre': 'The Shinobi',
    'nacionalidad': 'Indonesia',
    'bandera': 'id',
    'reside': 'Bali',
    'edad': '47',
    'killings': '61',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'logrado',
        'nombre': 'Abdurrahman Wahid',
        'paga': '10000000 Rp',
        'nacionalidad': 'Indonesia',
        'bandera': 'id',
        'foto': 'abdu.jpg'
      },
      {
        'contrato': '2',
        'estado': 'logrado',
        'nombre': 'George Harrison',
        'paga': '1000000000 Rp',
        'nacionalidad': 'United States',
        'bandera': 'us',
        'foto': 'harrison.jpg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Ratan Tata',
        'paga': '90000000000 Rp',
        'nacionalidad': 'India',
        'bandera': 'in',
        'foto': 'ratan.jpg'
      }
    ]
  },
  {
    'nombre': 'Chidi',
    'nacionalidad': 'Chile',
    'bandera': 'cl',
    'reside': 'Ocoa',
    'edad': '45',
    'killings': '78',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'no logrado',
        'nombre': 'Flaitiano',
        'paga': '1000000000000 CLP',
        'nacionalidad': 'Haiti',
        'bandera': 'ht',
        'foto': 'tiano.jpg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Vendedor de leña',
        'paga': '1000000000000 CLP',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'vendedor.jpg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Papi Micki',
        'paga': '9000000000000 CLP',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'papi.jpg'
      },
      {
        'contrato': '4',
        'estado': 'no logrado',
        'nombre': 'Ñakson',
        'paga': '7000000000000 CLP',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'guaton.jpg'
      }
    ]
  },
  {
    'nombre': 'Zero',
    'nacionalidad': 'Japan',
    'bandera': 'jp',
    'reside': 'Fiji',
    'edad': '52',
    'killings': '94',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'logrado',
        'nombre': 'Hikori Tanaka',
        'paga': '1000000 yen',
        'nacionalidad': 'Japan',
        'bandera': 'jp',
        'foto': 'japones.jpg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Tadashi Yanai',
        'paga': '10000000 yen',
        'nacionalidad': 'Japan',
        'bandera': 'jp',
        'foto': 'tadashi.jpg'
      }
    ]
  },
  {
    'nombre': 'The Adjudicator',
    'nacionalidad': 'United States',
    'bandera': 'us',
    'reside': 'California',
    'edad': '38',
    'killings': '45',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'logrado',
        'nombre': 'John Lennon',
        'paga': '100000000000 USD',
        'nacionalidad': 'English',
        'bandera': 'en',
        'foto': 'lennon.jpg'
      },
      {
        'contrato': '2',
        'estado': 'logrado',
        'nombre': 'Mahatma Gandhi',
        'paga': '1000000000 USD',
        'nacionalidad': 'India',
        'bandera': 'id',
        'foto': 'gandhi.jpg'
      }
    ]
  },
  {
    'nombre': 'The Harbinger',
    'nacionalidad': 'United States',
    'bandera': 'us',
    'reside': 'Ohio',
    'edad': '74',
    'killings': '156',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'no logrado',
        'nombre': 'Elon Musk',
        'paga': '100000000000 USD',
        'nacionalidad': 'South Africa',
        'bandera': 'za',
        'foto': 'musk.jpg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Jeff Bezos',
        'paga': '1000000000000 USD',
        'nacionalidad': 'United States',
        'bandera': 'us',
        'foto': 'jeff.jpg'
      },
      {
        'contrato': '3',
        'estado': 'logrado',
        'nombre': 'Eduardo Bonvallet',
        'paga': '1000000000000 USD',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'bonva.jpg'
      }
    ]
  },
  {
    'nombre': 'Killa Harkan',
    'nacionalidad': 'German',
    'bandera': 'de',
    'reside': 'Hamburgo',
    'edad': '56',
    'killings': '356',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'no logrado',
        'nombre': 'Sebastian Vettel',
        'paga': '1000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'vettel.jpg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Dirk Nowitzki',
        'paga': '1000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'dirk.jpg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Anne Imhof',
        'paga': '1000000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'anne.jpg'
      }
    ]
  },
  {
    'nombre': 'Vincent Bisset de Gramont',
    'nacionalidad': 'France',
    'bandera': 'fr',
    'reside': 'Lyon',
    'edad': '34',
    'killings': '67',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'no logrado',
        'nombre': 'Erwin Creed',
        'paga': '10000000000 €',
        'nacionalidad': 'French',
        'bandera': 'fr',
        'foto': 'erwin.jpg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Jean-Paul Gaultier',
        'paga': '100000000000 €',
        'nacionalidad': 'French',
        'bandera': 'fr',
        'foto': 'jpg.jpg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Bernard Arnault',
        'paga': '1000000000000 €',
        'nacionalidad': 'French',
        'bandera': 'fr',
        'foto': 'bernard.jpg'
      }
    ]
  },
  {
    'nombre': 'Caine',
    'nacionalidad': 'Hong Kong',
    'bandera': 'hk',
    'reside': 'Pico Victoria',
    'edad': '45',
    'killings': '267',
    'contratos': [
      {
        'contrato': '1',
        'estado': 'no logrado',
        'nombre': 'Valentino Garavani',
        'paga': '100000000000 €',
        'nacionalidad': 'Italy',
        'bandera': 'it',
        'foto': 'valentino.jpg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Jeremy Fragance',
        'paga': '100000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'jeremy.jpg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Ye',
        'paga': '1000000000000 USD',
        'nacionalidad': 'United States',
        'bandera': 'us',
        'foto': 'ye.jpg'
      }
    ]
  }
];

class Contratos extends StatefulWidget {
  final String asesinoSeleccionado;
  const Contratos({super.key, required this.asesinoSeleccionado});

  @override
  State<Contratos> createState() => _ContratosState();
}

class _ContratosState extends State<Contratos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: DetalleAsesino(
            asesinoSeleccionado: widget.asesinoSeleccionado,
            asesinos: asesinos));
  }
}

class DetalleAsesino extends StatelessWidget {
  final String asesinoSeleccionado;
  final List<dynamic> asesinos;
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

  DetalleAsesino({required this.asesinoSeleccionado, required this.asesinos});

  @override
  Widget build(BuildContext context) {
    List<Widget> listaContratos =
        Contratoss.generarContratos(asesinoSeleccionado, asesinos);

    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            title: Text('Contratos de $asesinoSeleccionado'),
            backgroundColor: const Color.fromARGB(255, 90, 83, 83)),
        body: ListView.builder(
          itemCount: listaContratos.length,
          itemBuilder: (context, index) {
            return listaContratos[index];
          },
        ),
        drawer: MiDrawer(
            asesinoSeleccionado: asesinoSeleccionado,
            asesinoIndex: _asesinoBusca(asesinoSeleccionado)));
  }
}
