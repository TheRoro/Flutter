class Movie {
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  bool favorite;
  String imageUrl;
  double popularity;
  Movie(
      {required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.favorite,
      required this.imageUrl,
      required this.popularity});
}
