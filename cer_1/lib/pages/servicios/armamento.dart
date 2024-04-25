import 'package:cer_1/widgets/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Armamento extends StatelessWidget {
  const Armamento(
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
        title: Text('Armamento'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
                8.0), // Ajusta el valor del relleno según sea necesario
            child: SizedBox(
              width: 600, // Ajusta el ancho deseado para la imagen
              height: 600, // Ajusta el alto deseado para la imagen
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/servicios/armamento.jpg'),
                  fit: BoxFit
                      .cover, // Opcional: ajusta el ajuste de la imagen según sea necesario
                ),
              ),
            ),
          ),
          SizedBox(height: 8), // Espacio entre la imagen y el pie de imagen
          Text('Peter Serafinowitcz',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Sommelier es un servicio proporcionado en The Continental; él suministra y sugiere armas de fuego y municiones.',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200, // Altura del carrusel
              aspectRatio: 16 / 9, // Relación de aspecto de las diapositivas
              autoPlay: true, // Reproducción automática
              enlargeCenterPage: true, // Enfatiza la página central
              enlargeStrategy: CenterPageEnlargeStrategy
                  .scale, // Estrategia de agrandamiento
            ),
            items: [
              AssetImage('assets/images/servicios/armamento 1.png'),
              AssetImage('assets/images/servicios/armamento 2.png'),
              AssetImage('assets/images/servicios/armamento 3.png'),
              // Agrega más imágenes según sea necesario
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
