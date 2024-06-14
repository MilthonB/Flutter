


import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_implementation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// Este repositorio es inmutable su objetivo es proporcionar informacion necesaria 
// Para qe puedan consultar todo 
final movieRepositoriProvider = Provider((ref) {
  return MovieRepositoryImplementation( MoviedbDatasource() );
} );

