import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class H1 extends StatelessWidget {
  const H1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 83, 83),
        title: Text('NYC'),
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
                  image: AssetImage('assets/images/hoteles/h1.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Continental NYC',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            'El Hotel Continental de Nueva York, mi amigo, es mucho más que un simple refugio para los cansados ​​y los buscados. Es un santuario para aquellos de nosotros que navegamos por los caminos oscuros de este mundo implacable. Si alguna vez necesitas un lugar para descansar tu cabeza sin temor a ser molestado por aquellos que te persiguen, el Continental es tu destino.',
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
              AssetImage('assets/images/hoteles/h1 1.webp'),
              AssetImage('assets/images/hoteles/h1 2.webp'),
              AssetImage('assets/images/hoteles/h1 3.webp'),
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
