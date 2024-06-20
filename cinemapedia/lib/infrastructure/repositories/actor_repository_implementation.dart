


import 'package:cinemapedia/domain/datasources/actors_datasources.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repository.dart';

class ActorRepositoryImplementation extends ActorsRepository{

  final ActorsDatasources datasource;

  ActorRepositoryImplementation({required this.datasource}); 

  @override
  Future<List<Actor>> getActorByMovie(String movieId) {

    return datasource.getActorByMovie(movieId);

  }

}


