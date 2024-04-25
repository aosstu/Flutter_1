import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class H3 extends StatelessWidget {
  const H3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
        title: Text('Roma'),
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
                  image: AssetImage('assets/images/hoteles/h3.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
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
              height: 200,
              aspectRatio: 16 / 9,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
            items: [
              AssetImage('assets/images/hoteles/h3 1.webp'),
              AssetImage('assets/images/hoteles/h3 2.webp'),
              AssetImage('assets/images/hoteles/h3 3.webp'),
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
