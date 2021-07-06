import 'dart:convert';
import 'package:http/http.dart';
import 'package:movies/models/Movie.dart';

class MovieService {
  List<Movie> movieList = [];
  Future<List<Movie>> getMovieList() async {
    Response movieResponse = await get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=3cae426b920b29ed2fb1c0749f258325'));
    Map data = jsonDecode(utf8.decode(movieResponse.bodyBytes));
    final movieResults = data['results'];
    for (var i = 0; i < movieResults.length; i++) {
      Movie mov = new Movie(
          id: movieResults[i]['id'],
          originalTitle: movieResults[i]['original_title'],
          originalLanguage: movieResults[i]['original_language'],
          overview: movieResults[i]['overview'],
          favorite: false,
          imageUrl: movieResults[i]['poster_path'],
          popularity: movieResults[i]['popularity']);
      // print(mov.originalLanguage);
      movieList.add(mov);
    }
    return movieList;
  }
}
