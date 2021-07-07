import 'package:flutter/material.dart';
import 'package:movies/db/dbmovie_database.dart';
import 'package:movies/models/Movie.dart';
import 'package:movies/services/movie_service.dart';

import 'movie_details.dart';

class MoviesList extends StatefulWidget {
  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  List<Movie> moviesList = [];

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  void getMovies() async {
    print("fetching data from api");
    final response = await MovieService().getMovieList();
    final moviesFromDB = await AppDatabase().getAllMovies();
    //IF DB already has movies
    if (moviesFromDB.length > 0) {
      setState(() {
        moviesList = moviesFromDB.cast<Movie>();
      });
    } else {
      //If db is empty, we populate with movies
      for (var i = 0; i < response.length; i++) {
        AppDatabase().insertMovie(DBMovie(
          id: response[i].id,
          imageUrl: response[i].imageUrl,
          originalLanguage: response[i].originalLanguage,
          originalTitle: response[i].originalTitle,
          overview: response[i].overview,
          popularity: response[i].popularity,
        ));
      }
      setState(() {
        moviesList = response;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: StreamBuilder(
        stream: AppDatabase().watchAllMovies(),
        builder: (context, AsyncSnapshot<List<DBMovie>> snapshot) {
          return ListView.builder(
            itemCount: moviesList.length,
            itemBuilder: (context, index) {
              final item = moviesList[index];

              return ListTile(
                  leading: GestureDetector(
                    child: Image.network(
                        'https://image.tmdb.org/t/p/w500${item.imageUrl}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetails(movie: item),
                        ),
                      ).then((value) {
                        setState(() {
                          AppDatabase().updateMovie(DBMovie(
                            id: item.id,
                            imageUrl: item.imageUrl,
                            originalLanguage: item.originalLanguage,
                            originalTitle: item.originalTitle,
                            overview: item.overview,
                            favorite: value,
                            popularity: item.popularity,
                          ));
                        });
                      });
                    },
                  ),
                  title: Text(item.originalTitle),
                  subtitle: Text(item.popularity.toString()),
                  trailing: IconButton(
                    icon: new Icon(Icons.favorite, color: getColor(item)),
                    onPressed: () {
                      print('updating database value');
                      setState(() {
                        item.favorite = !item.favorite;
                        AppDatabase().updateMovie(DBMovie(
                          id: item.id,
                          imageUrl: item.imageUrl,
                          originalLanguage: item.originalLanguage,
                          originalTitle: item.originalTitle,
                          overview: item.overview,
                          favorite: item.favorite,
                          popularity: item.popularity,
                        ));
                      });
                    },
                  ));
            },
          );
        },
      )),
    );
  }

  Color getColor(Movie item) {
    if (item.favorite) {
      return Colors.redAccent;
    } else {
      return Colors.black26;
    }
  }
}
