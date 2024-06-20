
import 'package:cinemapedia/domain/entities/actor.dart';

abstract class ActorsDatasources{


  Future<List<Actor>> getActorByMovie( String movieId);

}