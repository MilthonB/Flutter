// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/config/helpers/human_format.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter/material.dart';

class MoviesHorizontalLisview extends StatefulWidget {
  final List<Movie> movies;
  final String? title;
  final String? subTitle;
  final VoidCallback? loadNextPage;

  const MoviesHorizontalLisview(
      {super.key,
      required this.movies,
      this.title,
      this.subTitle,
      this.loadNextPage});

  @override
  State<MoviesHorizontalLisview> createState() => _MoviesHorizontalLisviewState();
}

class _MoviesHorizontalLisviewState extends State<MoviesHorizontalLisview> {

  final scrollControll = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollControll.addListener((){

        if(widget.loadNextPage == null) return;

        if( scrollControll.position.pixels+200 >= scrollControll.position.maxScrollExtent){
          print('Load next movie');
          widget.loadNextPage!();
        }



    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollControll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Column(
        children: [
          if (widget.title != null || widget.subTitle != null)
            _Title(title: widget.title, subtitle: widget.subTitle),
          Expanded(
            child: ListView.builder(
              controller: scrollControll,
              itemCount: widget.movies.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return FadeInRight(
                  child: _Slide(
                    movie: widget.movies[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const _Title({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge;
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if (title != null)
            Text(
              title!,
              style: textStyle,
            ),
          const Spacer(),
          if (subtitle != null)
            FilledButton.tonal(
              onPressed: () {},
              child: Text(subtitle!),
              style: ButtonStyle(
                visualDensity: VisualDensity.compact,
              ),
            ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;
  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {

    final styleText = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          //Esto es la imagen
          SizedBox(
            width: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                movie.posterPath,
                fit: BoxFit.cover,
                width: 150,
                loadingBuilder: (context, child, loadingProgress) {
                  if( loadingProgress != null ) 
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: CircularProgressIndicator(strokeWidth: 2,)),
                    );
                  return FadeIn(child: child);
                },
              ),
            ),
          ),
          //
          SizedBox(
            width: 150,
            child: Text(
              movie.title,
              maxLines: 2,
              style: styleText.titleSmall,
            ),
          ),
          Row(
            children: [
              Icon(Icons.star_half_outlined,color: Colors.yellow.shade800,),
              SizedBox(width: 3,),
              Text('${movie.voteAverage}', style: styleText.bodyMedium?.copyWith(color: Colors.yellow.shade800),),
              SizedBox(width: 10,),
              Text('${HumanFormat.number(movie.popularity)}', style: styleText.bodySmall,)
            ],
          )
        ],
      ),
    );
  }
}
