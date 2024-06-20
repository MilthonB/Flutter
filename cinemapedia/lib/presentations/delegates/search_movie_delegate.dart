import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/config/helpers/human_format.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter/material.dart';

typedef SearchMoviesCallback = Future<List<Movie>> Function(String query);

class SearchMovieDelegate extends SearchDelegate<Movie?> {
  final SearchMoviesCallback searchMovies;

  StreamController<List<Movie>> debunceMocvies = StreamController.broadcast();
  StreamController<bool> isloadingStream = StreamController.broadcast();
  Timer? _debounceTimer;

  List<Movie> initalMovie;

  SearchMovieDelegate({required this.initalMovie, required this.searchMovies});

  void clearStreams() {
    debunceMocvies.close();
    isloadingStream.close();
  }

  void _onQueryChanged(String query) {
    isloadingStream.add(true);

    if (_debounceTimer?.isActive ?? false)
      _debounceTimer!.cancel(); // Cancelar el timer
    _debounceTimer = Timer(
      const Duration(milliseconds: 500),
      () async {
        // if( query.isEmpty ){
        //   debunceMocvies.add([]);
        //   return;
        // }

        final movie = await searchMovies(query);
        debunceMocvies.add(movie);
        initalMovie = movie;
        isloadingStream.add(false);
      },
    );
  }

  @override
  // TODO: implement searchFieldLabel
  String? get searchFieldLabel => 'Buscar Pelicula';

  Widget buildResultAndSuggestions() {
    return StreamBuilder(
      // future: searchMovies(query),
      initialData: initalMovie,
      stream: debunceMocvies.stream,
      builder: (context, snapshot) {
        final movies = snapshot.data ?? [];

        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return _MovieItem(
              movie: movie,
              onMovieSelected: (context, movie) {
                clearStreams();
                close(context, movie);
              },
            );
            //return ListTile(title: Text(movie.title));
          },
        );
      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      StreamBuilder<bool>(
        stream: isloadingStream.stream,
        initialData: false,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data ?? false) {
            return SpinPerfect(
              duration: const Duration(seconds: 1),
              spins: 10,
              infinite: true,
              animate: query.isNotEmpty,
              child: IconButton(
                  onPressed: () => query = '',
                  icon: Icon(Icons.refresh_rounded)),
            );
          }
          return FadeIn(
            animate: query.isNotEmpty,
            child: IconButton(
                onPressed: () => query = '', icon: Icon(Icons.clear)),
          );
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          clearStreams();
          close(context, null);
        },
        icon: Icon(Icons.arrow_back_ios_new_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildResultAndSuggestions();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _onQueryChanged(query);
    return buildResultAndSuggestions();
  }
}

class _MovieItem extends StatelessWidget {
  final Movie movie;
  final Function onMovieSelected;
  const _MovieItem({required this.movie, required this.onMovieSelected});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        onMovieSelected(context, movie);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            //Image
            SizedBox(
              width: size.width * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  movie.posterPath,
                  loadingBuilder: (context, child, loadingProgress) {
                    return FadeIn(child: child);
                  },
                ),
              ),
            ),

            SizedBox(
              width: 10,
            ),

            SizedBox(
              width: size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: textStyle.titleMedium,
                  ),
                  (movie.overview.length > 100)
                      ? Text('${movie.overview.substring(0, 100)}...')
                      : Text(movie.overview),
                  Row(
                    children: [
                      Icon(
                        Icons.star_half_rounded,
                        color: Colors.yellow.shade800,
                      ),
                      Text(
                        HumanFormat.number(movie.voteAverage, 1),
                        style: textStyle.bodyMedium!
                            .copyWith(color: Colors.yellow.shade800),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Desription
          ],
        ),
      ),
    );
  }
}
