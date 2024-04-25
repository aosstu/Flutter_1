import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class H4 extends StatelessWidget {
  const H4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
        title: Text('Casablanca'),
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
              width: 200,
              height: 300,
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/hoteles/h4.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Continental Casablanca',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Hotel Continental de Casablanca, Chile es un verdadero paraíso para los amantes del vino y la cultura vitivinícola. Este hotel se encuentra estratégicamente ubicado en medio de los viñedos más prestigiosos de la región, rodeado de exuberantes paisajes de colinas y vides que se extienden hasta donde alcanza la vista.',
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
              AssetImage('assets/images/hoteles/h4 1.webp'),
              AssetImage('assets/images/hoteles/h4 2.webp'),
              AssetImage('assets/images/hoteles/h4 3.webp'),
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
