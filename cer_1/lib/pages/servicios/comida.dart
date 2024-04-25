import 'package:cer_1/widgets/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Comida extends StatelessWidget {
  const Comida(
      {super.key,
      required this.asesinoSeleccionado,
      required this.asesinoIndex});
  final String asesinoSeleccionado;
  final int asesinoIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
        title: Text('Comida'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: SizedBox(
              width: 600,
              height: 400,
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/servicios/comida.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Cocinero Personal',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Chef ShengLong prepara sus deliciosos HandRolls a todo aquel que lo desee con mucho cariño el compare.\nMenús abajo:',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
            items: [
              AssetImage('assets/images/servicios/comida 1.jpg'),
              AssetImage('assets/images/servicios/comida 2.jpg'),
              AssetImage('assets/images/servicios/comida 3.jpg'),
            ].map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
      drawer: MiDrawer(
          asesinoSeleccionado: asesinoSeleccionado, asesinoIndex: asesinoIndex),
    );
  }
}
