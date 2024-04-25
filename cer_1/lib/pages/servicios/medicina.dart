import 'package:cer_1/widgets/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Medicina extends StatelessWidget {
  const Medicina(
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
        title: Text('Medicina'),
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
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 600,
              height: 450,
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/servicios/medicina.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Randall Duk Kim',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Doctor es un médico de guardia cuyo trabajo consiste en tratar heridas y lesiones para sicarios, criminales y asesinos.\n Servicios:',
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
              AssetImage('assets/images/servicios/medicina 1.png'),
              AssetImage('assets/images/servicios/medicina 2.png'),
              AssetImage('assets/images/servicios/medicina 3.png'),
              AssetImage('assets/images/servicios/medicina 4.png'),
              AssetImage('assets/images/servicios/medicina 5.png'),
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
