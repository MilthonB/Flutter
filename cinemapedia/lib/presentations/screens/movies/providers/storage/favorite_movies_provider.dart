

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/local_storage_repository.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteMoviesProvider = StateNotifierProvider<StorageMoviesNotifaier,Map<int, Movie>>((ref){
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageMoviesNotifaier(localStarageRepository: localStorageRepository);
});

// {
//   123: Movie
//   123: Movie
//   123: Movie
// }

class StorageMoviesNotifaier extends StateNotifier<Map<int,Movie>>{
  
  int page = 0;
  final LocalStorageRepository localStarageRepository; 
  StorageMoviesNotifaier({required this.localStarageRepository}):super({});


  Future<List<Movie>> loadNextPage() async{

    final movies =  await localStarageRepository.loadMovie(offset: page *10, limit: 15);
    page++;

    final tempMoviesMap = <int, Movie>{};
    for( final movie  in movies ){
      tempMoviesMap[movie.id] = movie;
    }
    state = {...state, ...tempMoviesMap };

    return movies;
  }

  Future<void> toggleFavorite( Movie movie ) async {

    await localStarageRepository.toggleFavorite(movie);
    final bool isMovieInFavorites = state[movie.id] != null;

    if ( isMovieInFavorites ){
      state.remove(movie.id);
      state = {...state};
    } else {
      state= {...state, movie.id: movie};
    }

  }

}