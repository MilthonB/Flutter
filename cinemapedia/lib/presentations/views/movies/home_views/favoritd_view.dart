

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentations/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../screens/movies/providers/providers.dart';


  // init
  // solo las priomeras 10

class FavoritdView extends ConsumerStatefulWidget {
  const FavoritdView({super.key});

  @override
  _FavoritdViewState createState() => _FavoritdViewState();
  
}
 

class _FavoritdViewState extends ConsumerState<FavoritdView> {

  bool isLastPage = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    ref.read(favoriteMoviesProvider.notifier).loadNextPage();
  }

  void loadNextPage() async { 
    if( isLoading || isLastPage ) return;
    isLoading = true;

    final movies = await ref.read(favoriteMoviesProvider.notifier).loadNextPage();
    isLoading = false;

    if( movies.isEmpty ){
      isLastPage = true; 
    }

  }

  @override
  Widget build(BuildContext context) {
    final List<Movie>listMoviesFavorite =  ref.watch(favoriteMoviesProvider).values.toList();
    // final List<Movie> listMovieFavorites =  moviesFavorite.entries.map((e) => e.value,).toList();
    
    if( listMoviesFavorite.isEmpty ){
      final colors =  Theme.of(context).colorScheme;
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.favorite_outline_rounded, size: 60, color: colors.primary,),
            Text('Ohhhh no!!', style: TextStyle(fontSize: 30, color: colors.primary),),
            const Text('No tienes peliculas favoritas', style: TextStyle(fontSize: 20, color: Colors.black87),),
            SizedBox(height: 20,),
            FilledButton.tonal(onPressed: () {
              context.go('/home/0');
            }, child: Text('Empieza a buscar...',  style: TextStyle(fontSize: 20, color: colors.primary)))
          ],
        ),
      );
    }


    return Scaffold(
      // appBar:  AppBar(title: Text('Favoiritoes View'),),
      body: SizedBox(
        height: MediaQuery.of(context).size.height-80,
        child: MovieMasonry(
          loadNextPage: loadNextPage,
          movies: listMoviesFavorite
            ),
      )
    );
  }
}