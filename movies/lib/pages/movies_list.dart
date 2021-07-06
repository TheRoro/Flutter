import 'package:flutter/material.dart';
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
    setState(() {
      moviesList = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
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
                  );
                },
              ),
              title: Text(item.originalTitle),
              subtitle: Text(item.popularity.toString()),
              trailing: IconButton(
                icon: new Icon(Icons.favorite, color: getColor(item)),
                onPressed: () {
                  print('updating value');
                  setState(() {
                    item.favorite = !item.favorite;
                  });
                },
              ));
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
