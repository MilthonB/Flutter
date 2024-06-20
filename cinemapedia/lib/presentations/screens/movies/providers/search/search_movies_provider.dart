



import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/movies/movies_repository_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchQueryProvider = StateProvider((ref) => '');

final searchedMoviesProvider = StateNotifierProvider<SearchMoviesNotifier, List<Movie>>((ref) {
  
  final movieRepository  = ref.read(movieRepositoriProvider);

  return SearchMoviesNotifier(movieRepository.searchMovie, ref);
}); 


typedef SearchMovieCallBack =  Future<List<Movie>>Function(String query);

class SearchMoviesNotifier extends StateNotifier<List<Movie>>{

  final SearchMovieCallBack searchMovie; 
  final Ref ref;

  SearchMoviesNotifier(this.searchMovie, this.ref): super([]);

  Future<List<Movie>> searchMoviesByQuery( String query  ) async {

    final List<Movie> movies = await searchMovie(query); 
    ref.read(searchQueryProvider.notifier).update((state) => query);

    state = movies;


    return movies;
  }

}



