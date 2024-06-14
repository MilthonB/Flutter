


import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/presentations/screens/movies/providers/movies/movies_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: _HomeView(),
      ),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {


  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {

    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    if( nowPlayingMovies.length == 0  ) return Center(
      child: CircularProgressIndicator(),
    );

    return ListView.builder(
      itemCount: nowPlayingMovies.length,
      itemBuilder: (context, index) {
        final movie =  nowPlayingMovies[index];
        return ListTile(
          title: Text(movie.title),
        );

      }
      );
  }
}





