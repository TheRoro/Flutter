import 'package:flutter/material.dart';
import 'package:movies/db/dbmovie_database.dart';
import 'package:movies/models/Movie.dart';

class MovieDetails extends StatefulWidget {
  final Movie movie;
  MovieDetails({required this.movie});

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(widget.movie.originalTitle),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Image.network(
                    'https://image.tmdb.org/t/p/w500${widget.movie.imageUrl}')),
            Expanded(
                child: IconButton(
              icon: new Icon(Icons.favorite, color: getColor(widget.movie)),
              onPressed: () {
                print('updating local value on details');
                setState(() {
                  widget.movie.favorite = !widget.movie.favorite;
                  Navigator.pop(context, widget.movie.favorite);
                });
              },
            )),
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Text(widget.movie.overview),
            ))
          ],
        ),
      ),
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
