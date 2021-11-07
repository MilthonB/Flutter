import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/model.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  int _popularPage = 0;

  Map<int, List<Cast>> moviesCast = {};

  MoviesProvider() {
    getOnDisplayMovies();
    getPopulationMovies();
  }

  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    try {
      final url = Uri.https(_baseUrl, endpoint, {
        'api_key': _apiKey,
        'language': _language,
        'page': '$page',
      });

      final response = await http.get(url);
      return response.body;
    } catch (e) {
      throw ('Error{$e}');
    }
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData('/3/movie/now_playing');

    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);
    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopulationMovies() async {
    _popularPage++;
    final jsonData = await _getJsonData('/3/movie/popular', _popularPage);

    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];
    notifyListeners();
  }

  Future<List<Cast>> getCreditsMovies(int movieId) async {
    if (moviesCast.containsKey(movieId)) return moviesCast[movieId]!;

    final jsonData = await _getJsonData('/3/movie/$movieId/credits');

    final creditsResponse = CreditsResponse.fromJson(jsonData);

    moviesCast[movieId] = creditsResponse.cast;

    return creditsResponse.cast;
  }
}
