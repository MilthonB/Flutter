import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../screens/movies/providers/providers.dart';
import '../../../widgets/widgets.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView();

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
    ref.read(popularMoviesProvider.notifier).loadNextPage();
    ref.read(toRatedMovieProvider.notifier).loadNextPage();
    ref.read(upComingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {

    final initialLoading = ref.watch(initalLoadingProvider);

    if(initialLoading)
    {
      return const FullScreenLoader();
    }


    final moviesSlideShow = ref.watch(moviesSlideShoeProvider);
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final popularmovies = ref.watch(popularMoviesProvider);
    final toRatedmovies = ref.watch(toRatedMovieProvider);
    final upComingmovies = ref.watch(upComingMoviesProvider);
    // final moviesSlideShow = ref.watch(moviesSlideShoeProvider);

    // if (moviesSlideShow.length == 0)
    //   return Center(
    //     child: CircularProgressIndicator(),
    //   );

    // return FullScreenLoader();

    return CustomScrollView(slivers: [
    
       SliverAppBar(
        backgroundColor: Colors.white,
        floating: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Colors.white,
          ),
          titlePadding: EdgeInsets.all(0),
          title: CustomAppbar(),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Column(
            children: [
              // CustomAppbar(),
    
              MoviesSlideshow(movies: moviesSlideShow),
    
              MoviesHorizontalLisview(
                movies: nowPlayingMovies,
                title: 'En Cines',
                subTitle: 'Lunes 20',
                loadNextPage: () {
                  ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                },
              ),
              MoviesHorizontalLisview(
                movies: upComingmovies,
                title: 'Proximamente',
                subTitle: 'En este mes',
                loadNextPage: () {
                  ref.read(upComingMoviesProvider.notifier).loadNextPage();
                },
              ),
              MoviesHorizontalLisview(
                movies: popularmovies,
                title: 'Populares',
                // subTitle: 'En este mes',
                loadNextPage: () {
                  ref.read(popularMoviesProvider.notifier).loadNextPage();
                },
              ),
              MoviesHorizontalLisview(
                movies: toRatedmovies,
                title: 'Mejor calificadas',
                subTitle: 'De todos los tiempos',
                loadNextPage: () {
                  ref.read(toRatedMovieProvider.notifier).loadNextPage();
                },
              ),
    
              SizedBox(
                height: 10,
              ),
    
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: nowPlayingMovies.length,
              //     itemBuilder: (context, index) {
              //       final movie = nowPlayingMovies[index];
              //       return ListTile(
              //         title: Text(movie.title),
              //       );
              //     },
              //   ),
              // )
            ],
          );
        }, childCount: 1),
      )
    ]);
  }
}
