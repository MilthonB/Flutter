import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/model.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider() {
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '/3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    print('Movies');
    print(nowPlayingResponse.results[1].title);
  }
}
