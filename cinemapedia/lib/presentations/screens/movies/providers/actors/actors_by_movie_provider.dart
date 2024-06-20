









import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/movies/actors_repository_provider.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/movies/movies_repository_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final actorsByMovieProvider = StateNotifierProvider<ActorByMovieNotifier,Map<String,List<Actor>>>(
  (ref){
    final getActor = ref.watch(actorRepositoryProvider);
    return ActorByMovieNotifier(getActor: getActor.getActorByMovie);
  }
  );



typedef GetActorsCallback =  Future<List<Actor>>Function(String movieId);

class ActorByMovieNotifier extends StateNotifier<Map<String,List<Actor>>>{

  final GetActorsCallback getActor;

  ActorByMovieNotifier( 
    {
      required this.getActor
    }
  ): super({});
    

  Future<void> loadActors( String movieId ) async{
    if( state[movieId] != null ) return;
    final actors = await getActor(movieId);
    state = {...state, movieId: actors};
  }


}




