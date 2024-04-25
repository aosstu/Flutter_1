import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class H3 extends StatelessWidget {
  const H3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('h1'),
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
                  image: AssetImage('assets/images/hoteles/h1.webp'),
                  fit: BoxFit
                      .cover, // Opcional: ajusta el ajuste de la imagen según sea necesario
                ),
              ),
            ),
          ),
          SizedBox(height: 8), // Espacio entre la imagen y el pie de imagen
          Text('Continental NYC',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(
              'El Hotel Continental de Nueva York, mi amigo, es mucho más que un simple refugio para los cansados ​​y los buscados. Es un santuario para aquellos de nosotros que navegamos por los caminos oscuros de este mundo implacable. Si alguna vez necesitas un lugar para descansar tu cabeza sin temor a ser molestado por aquellos que te persiguen, el Continental es tu destino.'),
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
              AssetImage('assets/images/hoteles/h1 1.webp'),
              AssetImage('assets/images/hoteles/h1 2.webp'),
              AssetImage('assets/images/hoteles/h1 3.webp'),
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
}
