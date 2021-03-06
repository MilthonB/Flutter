import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';

import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Películas en cines'),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: SearchMovie()),
              icon: Icon(Icons.search_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Tarjetas principales: CardSwiper
              CardSwiper(
                movies: moviesProvider.onDisplayMovies,
              ),
              //Slider de películas
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares!',
                onNextPage: () => moviesProvider.getPopulationMovies(),
              )
              //Listado horizontal de películas
            ],
          ),
        ));
  }
}
