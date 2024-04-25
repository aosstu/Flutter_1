import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class H3 extends StatelessWidget {
  const H3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
        title: Text('Roma'),
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
              width: 200, // Ajusta el ancho deseado para la imagen
              height: 300, // Ajusta el alto deseado para la imagen
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/hoteles/h3.webp'),
                  fit: BoxFit
                      .cover, // Opcional: ajusta el ajuste de la imagen según sea necesario
                ),
              ),
            ),
          ),
          SizedBox(height: 8), // Espacio entre la imagen y el pie de imagen
          Text('Continental Roma',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Hotel Il Continentale en Roma es una obra maestra de la elegancia italiana, donde el encanto de la Ciudad Eterna se encuentra con el refinamiento y la sofisticación de la hospitalidad de clase mundial. Es un lugar donde la historia se mezcla con el arte y la cultura para crear una experiencia verdaderamente inolvidable.',
            style: TextStyle(color: Colors.white),
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
              AssetImage('assets/images/hoteles/h3 1.webp'),
              AssetImage('assets/images/hoteles/h3 2.webp'),
              AssetImage('assets/images/hoteles/h3 3.webp'),
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
    );
  }
}
