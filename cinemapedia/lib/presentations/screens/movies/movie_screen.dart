import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/movies/movie_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieScreen extends ConsumerStatefulWidget {
  static const name = 'movie-screen';
  final String movieId;
  const MovieScreen({super.key, required this.movieId});

  @override
  MovieScreenState createState() => MovieScreenState();
}

class MovieScreenState extends ConsumerState<MovieScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(movieInfoProvider.notifier).loadMovie(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    final Movie? movie = ref.watch(movieInfoProvider)[widget.movieId];

    if (movie == null) {
      return Center(
          child: CircularProgressIndicator(
        strokeWidth: 4,
      ));
    }

    return Scaffold(
        // appBar: AppBar(
        //   title: Text('MovideID: ${widget.movieId}'),
        // ),
        body: CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        _CustomSliverAppBar(
          movie: movie,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 1,
          (context, index) {
            return _MovieDetails(movie: movie);
          },
        ))
      ],
    ));
  }
}

class _MovieDetails extends StatelessWidget {
  final Movie movie;
  const _MovieDetails({required this.movie});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Imagen
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  movie.posterPath,
                  width: size.width * 0.3,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              //Descripcion
              SizedBox(
                width: (size.width - 40) * .7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: textStyle.titleLarge,
                    ),
                    Text(
                      movie.overview,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // Placeholder()

        //Gneros de la pelicula
        Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            children: [
              ...movie.genreIds.map((genero) => Container(
                margin: EdgeInsets.only(right: 10),
                child: Chip(
                  label: Text( genero ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ))
            ],
          ),
        ),

        // TODO: Mostrar acotres ListView
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  final Movie movie;
  const _CustomSliverAppBar({required this.movie});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: size.height * .7,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                movie.posterPath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.7, 1.0],
                          colors: [Colors.transparent, Colors.black87]))),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          // end: Alignment.topCenter,
                          stops: [
                    0.0,
                    0.3
                  ],
                          colors: [
                    Colors.black87,
                    Colors.transparent,
                  ]))),
            )
          ],
        ),
        titlePadding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
        centerTitle: true,
        title: Text(
          textAlign: TextAlign.start,
          movie.title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
