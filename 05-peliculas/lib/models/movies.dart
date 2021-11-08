import 'dart:convert';

class Movie {
  Movie({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  bool adult;
  String? backdropPath;
  List<int> genreIds;
  int id;
  String? originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String? posterPath;
  String? releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  String? heroId;

  get fullPosterImg {
    return (this.posterPath != null)
        ? 'https://image.tmdb.org/t/p/w500${this.posterPath}'
        : 'https://i.stack.imgur.com/GNhxO.png';
  }

  get fullBackImg {
    return (this.backdropPath != null)
        ? 'https://image.tmdb.org/t/p/w500${this.backdropPath}'
        : 'https://i.stack.imgur.com/GNhxO.png';
  }

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        id: json["id"],
        adult: json["adult"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        originalLanguage: json[json["original_language"]],
        originalTitle: json["original_title"],
        backdropPath: json["backdrop_path"],
        releaseDate: json["release_date"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        overview: json["overview"],
        voteCount: json["vote_count"],
      );
}
