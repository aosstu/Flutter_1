import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class H2 extends StatelessWidget {
  const H2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
        title: Text('Osaka'),
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
              height: 300,
              width: 200,
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/hoteles/h2.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Continental Osaka',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Hotel Continental en Osaka, Japón, es una joya oculta en el corazón de la ciudad que nunca duerme. A diferencia de sus homólogos en otras partes del mundo, el Continental en Osaka se destaca por su fusión única de tradición japonesa y elegancia contemporánea. Es un santuario para aquellos que buscan una experiencia exquisita en medio del bullicio de la vida moderna.',
            style: TextStyle(color: Colors.white),
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
              AssetImage('assets/images/hoteles/h2 1.webp'),
              AssetImage('assets/images/hoteles/h2 2.webp'),
              AssetImage('assets/images/hoteles/h2 3.webp'),
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
