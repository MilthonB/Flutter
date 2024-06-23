

import 'package:cinemapedia/domain/datasources/local_storage-datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasource extends LocalStorageDatasource{

  late Future<Isar> db;


  IsarDatasource(){
    db = openDB(); 
  }




  @override
  Future<bool> isMovieFavorite(int movieId) async {
    final isar = await db; 

    //retornar una movie, si esta la movie entonces es true si no pes es false 
    final Movie? isFavoriteMovie  =  await isar.movies
    .filter() // hacer un filtro que no necesita una condicion de where 
    .idEqualTo(movieId) // bucas el id de la pelicula
    .findFirst(); //  regresas el primero que encuentres 

    return isFavoriteMovie != null; //  si esta es true y si no esta en favoritos es false 
         

  }

  @override
  Future<List<Movie>> loadMovie({int limit = 10, offset = 0}) async{
    final isar = await db; 

    return await isar.movies.where() // buscar en la base de datos  con la condicion del wehere
    .offset(offset) //  where offese
    .limit(limit) // where limit
    .findAll(); //  encuentra todo con todos es parametros y devuelvemelo con el return 
  }

  @override
  Future<void> toggleFavorite(Movie movie) async {

      //Hacer una transaccion 

      final isar  = await db;

      //insertar en base de datos una nueva peleicula en favoritos 

      // Buscar si la pelicula existe en favoritos
      final favoriteMovie  = await isar.movies
      .filter()
      .idEqualTo(movie.id)
      .findFirst();

      if( favoriteMovie != null ){
        //borrar
        isar.writeTxnSync(() => isar.movies.deleteSync(favoriteMovie.isarId!));
        return; 
      }

      //Insertar
      isar.writeTxnSync(() => isar.movies.putSync(movie));



  }
  
  Future<Isar> openDB() async {

    final dir =  await getApplicationDocumentsDirectory();

    if( Isar.instanceNames.isEmpty ){
      return await Isar.open([MovieSchema], directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }

}