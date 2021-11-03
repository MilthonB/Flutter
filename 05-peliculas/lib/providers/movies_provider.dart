import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('Movies provider');
  }

  getOnDisplayMovies() {
    print('getOnDisplayMovies');
  }
}
