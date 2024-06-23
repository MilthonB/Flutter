


import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentations/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class MovieMasonry extends StatefulWidget {

  final List<Movie> movies;
  final VoidCallback?  loadNextPage;

  const MovieMasonry({super.key, required this.movies, this.loadNextPage});

  @override
  State<MovieMasonry> createState() => _MovieMasonryState();
}

class _MovieMasonryState extends State<MovieMasonry> {

  //TODO; initstate -  dispose

  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Ncesito saber cuando llego al final de la pantalla

    scrollController.addListener((){
      if(widget.loadNextPage == null) return; 
      if( (scrollController.position.pixels + 100 ) >= scrollController.position.maxScrollExtent ){
        widget.loadNextPage!();
      }

    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // aqui se cierra el controller 
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        controller: scrollController,
        crossAxisCount: 3, 
        itemCount: widget.movies.length,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
          if(index == 1) {
            return Column(
              children: [
                const SizedBox(height: 40,),
                MoviePoster(movie: widget.movies[index])
              ],
            );
          } 
          return MoviePoster(movie: widget.movies[index]);

        },
      ),
    );
  }
}

