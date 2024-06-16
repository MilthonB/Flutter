

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/movies/movies_repository_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider = StateNotifierProvider<MoviesNotifier,List<Movie>>(
  (ref){
    final fetchMoreMovies = ref.watch( movieRepositoriProvider ).getNowPlaying;
    return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
  });


final popularMoviesProvider = StateNotifierProvider<MoviesNotifier,List<Movie>>(
  (ref){
    final fetchMoreMovies = ref.watch( movieRepositoriProvider ).getPopular;
    return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
  });


final toRatedMovieProvider = StateNotifierProvider<MoviesNotifier,List<Movie>>(
  (ref){
    final fetchMoreMovies = ref.watch( movieRepositoriProvider ).getToRated;
    return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
  });


final upComingMoviesProvider = StateNotifierProvider<MoviesNotifier,List<Movie>>(
  (ref){
    final fetchMoreMovies = ref.watch( movieRepositoriProvider ).getUpcoming;
    return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
  });


typedef MovieCallBack = Future<List<Movie>> Function({int page});

class MoviesNotifier extends StateNotifier<List<Movie>>{
  
  int currenPage = 0;
  bool isLoading = false;
  MovieCallBack fetchMoreMovies; 
  
  MoviesNotifier({required this.fetchMoreMovies}): super([]);

  Future<void> loadNextPage() async {
    if(isLoading) return;
    isLoading= true;
    currenPage++;
    final List<Movie> movies = await fetchMoreMovies(page: currenPage);
    state = [...state, ...movies ];
    await Future.delayed(const Duration(milliseconds: 300));
    isLoading = false;
  }
  


}


