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

class AssasinCard extends StatefulWidget {
  final String asesinoSeleccionado;
  const AssasinCard({super.key, required this.asesinoSeleccionado});
  @override
  // ignore: no_logic_in_create_state
  State<AssasinCard> createState() =>
      _AssasinCardState(asesinoSeleccionado: asesinoSeleccionado);
}

class _AssasinCardState extends State<AssasinCard> {
  final String asesinoSeleccionado;
  //_generateItemsListt(8);

  _AssasinCardState({required this.asesinoSeleccionado});
  @override
  Widget build(BuildContext context) {
  final List<Item> _listaDeItems = _generateItemsList(asesinoSeleccionado, 10);
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            for (int i = 0; i < _listaDeItems.length; i++) {
              if (i != index) {
                _listaDeItems[i].isExpanded = false;
              }
            }
            _listaDeItems[index].isExpanded =
                !(_listaDeItems[index].isExpanded);
          });
        },
        children: _listaDeItems.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerText),
              );
            },
            body: ListTile(
              title: Text(item.headerText),
              subtitle: Text(item.expandedText),
            ),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}

class Item {
  String headerText;
  String expandedText;
  bool isExpanded;
  Item(
      {required this.headerText,
      required this.expandedText,
      this.isExpanded = false});
}

List<Item> _generateItemsListtt(String nombre, int size) {
  for (int i = 0; i < asesinos.length; i++) {
    if (asesinos[i]['nombre'] == nombre) {
      Map<String, dynamic> asesino = asesinos[i];
      List<Map<String, dynamic>> contratos = asesino['contratos'];
      int length = contratos.length;
      return List.generate(
          length,
          (int index) =>
              Item(headerText: '$index', expandedText: 'Item $index'));
    }
  }
  // No match found, return an empty list
  return [];
}


List<Item> _generateItemsList(String nombre, int size) {
  for (int i = 0; i < asesinos.length; i++) {
    if (asesinos[i]['nombre'] == nombre) {
      Map<String, dynamic> asesino = asesinos[i];
      List<Map<String, dynamic>> contratos = asesino['contratos'];
      int length = contratos.length;
      return List.generate(
          length,
          (int index) =>
              Item(headerText: '$index', expandedText: 'Item $index'));
    }
  }
  // No match found, return an empty list
  return [];
}
List<Item> _generateItemsListt(int size) {
  return List.generate(
      size,
      (int index) => Item(
          headerText: '$index',
          expandedText: 'Item $index',
          isExpanded: false));
}
