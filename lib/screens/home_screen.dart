import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {}, 
          )
        ],
      ),
      body: SingleChildScrollView(  // Para darle un scroll si el contenido no quepa en la pantalla
        child: Column(
          children: [
      
            // Tarjetas principales
            CardSwiper(),
      
            // Slider de peliculas
            MovieSlider(),
      
          ],
        ),
      )
    );
  }

}