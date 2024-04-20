import 'dart:convert';

import 'package:cer_1/pages/alta_mesa.dart';
import 'package:flutter/material.dart';

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
        'foto': 'abdu.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'logrado',
        'nombre': 'George Harrison',
        'paga': '1000000000 Rp',
        'nacionalidad': 'United States',
        'bandera': 'us',
        'foto': 'harrison.jpeg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Ratan Tata',
        'paga': '90000000000 Rp',
        'nacionalidad': 'India',
        'bandera': 'in',
        'foto': 'ratan.jpeg'
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
        'foto': 'tiano.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Vendedor de leña',
        'paga': '1000000000000 CLP',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'vendedor.jpeg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Papi Micki',
        'paga': '9000000000000 CLP',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'papi.jpeg'
      },
      {
        'contrato': '4',
        'estado': 'no logrado',
        'nombre': 'Ñakson',
        'paga': '7000000000000 CLP',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'guaton.jpeg'
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
        'foto': 'japones.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Tadashi Yanai',
        'paga': '10000000 yen',
        'nacionalidad': 'Japan',
        'bandera': 'jp',
        'foto': 'tadashi.jpeg'
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
        'foto': 'lennon.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'logrado',
        'nombre': 'Mahatma Gandhi',
        'paga': '1000000000 USD',
        'nacionalidad': 'India',
        'bandera': 'id',
        'foto': 'gandhi.jpeg'
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
        'foto': 'musk.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Jeff Bezos',
        'paga': '1000000000000 USD',
        'nacionalidad': 'United States',
        'bandera': 'us',
        'foto': 'jeff.jpeg'
      },
      {
        'contrato': '3',
        'estado': 'logrado',
        'nombre': 'Eduardo Bonvallet',
        'paga': '1000000000000 USD',
        'nacionalidad': 'Chile',
        'bandera': 'cl',
        'foto': 'bonva.jpeg'
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
        'foto': 'vettel.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Dirk Nowitzki',
        'paga': '1000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'dirk.jpeg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Anne Imhof',
        'paga': '1000000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'anne.jpeg'
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
        'foto': 'erwin.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Jean-Paul Gaultier',
        'paga': '100000000000 €',
        'nacionalidad': 'French',
        'bandera': 'fr',
        'foto': 'jpg.jpeg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Bernard Arnault',
        'paga': '1000000000000 €',
        'nacionalidad': 'French',
        'bandera': 'fr',
        'foto': 'bernard.jpeg'
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
        'foto': 'valentino.jpeg'
      },
      {
        'contrato': '2',
        'estado': 'no logrado',
        'nombre': 'Jeremy Fragance',
        'paga': '100000000000 €',
        'nacionalidad': 'German',
        'bandera': 'de',
        'foto': 'jeremy.jpeg'
      },
      {
        'contrato': '3',
        'estado': 'no logrado',
        'nombre': 'Ye',
        'paga': '1000000000000 USD',
        'nacionalidad': 'United States',
        'bandera': 'us',
        'foto': 'ye.jpeg'
      }
    ]
  }
];

class Asesino {
  String texto;
  int valor;

  Asesino(this.texto, this.valor);
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController locosController = TextEditingController();
  Asesino? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nombre')),
      body: Row(
        children: [
          Center(
            child: DropdownButton<Asesino>(
              value: selectedIndex,
              hint: const Text('Select a asesino'),
              onChanged: (newValue) {
                setState(() {
                  selectedIndex = newValue;
                });
              },
              items: [
                DropdownMenuItem<Asesino>(
                    value: Asesino("The Shinobi", 0),
                    child: Text("The Shinobi")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("Chidi", 1), child: Text("Chidi")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("Zero", 2), child: Text("Zero")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("The Adjudicator", 3),
                    child: Text("The Adjudicator")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("The Harbinger", 4),
                    child: Text("The Harbinger")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("Killa Harkan", 5),
                    child: Text("Killa Harkan")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("Vincent Bisset de Gramont", 6),
                    child: Text("Vincent Bisset de Gramont")),
                DropdownMenuItem<Asesino>(
                    value: Asesino("Caine", 7), child: Text("Caine"))
              ],
            ),
          ),
          OutlinedButton(
              onPressed: selectedIndex != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AltaMesa(
                            asesinoSeleccionado: selectedIndex!,
                          ),
                        ),
                      );
                    }
                  : null,
              child: Text('login'))
        ],
      ),
    );
  }
}
