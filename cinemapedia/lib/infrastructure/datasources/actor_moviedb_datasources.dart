


import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actors_datasources.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credit_response.dart';
import 'package:dio/dio.dart';

class ActorMoviedbDatasources extends ActorsDatasources{

    // Dio base 
    final dio = Dio( BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDBKey,
        'languuage':'es-MX'
      }
    ));

  @override
  Future<List<Actor>> getActorByMovie(String movieId) async {

    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data); 

    return castResponse.cast.map(
      (cast) => ActorMapper.castToEntity(cast)
    ).toList();

  }

}