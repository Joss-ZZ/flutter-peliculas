import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),

          const SizedBox(height: 5),

          Expanded(
            // Toma todo el tamaño que queda disponible de la Column
            child: ListView.builder(
              // Esto define su ancho basado en el padre que es un Column y es flexible, que es lo q genera un error, encerramos en un Expanded para solucionar
              scrollDirection:
                  Axis.horizontal, // para cambiar la dirección del listView
              itemCount: 20,
              itemBuilder: (_, int index) => _MoviePoster()
            ),
          ),
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  // Es una clase privada porque solo lo usaremos dentro de este componente

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      // color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage('https://via.placeholder.com/300x400'),
                width: 130,
                height: 190,
                fit: BoxFit.cover
              ),
            ),
          ),

          const SizedBox(height: 5,),

          const Text(
            'Starswars: El retorno del jedi slvestre de monte cristo',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )

        ],
      ),
    );
  }
}
