import 'package:flutter/material.dart';
import 'package:movie/data/movie_repository.dart';
import 'package:movie/model/movie.dart';
import 'package:movie/pages/search-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<List<Movie>>(
          future: MovieRepository().getMovies(),
          builder: (context, snapshot) => snapshot.hasData
              ? SearchPage(movies: snapshot.data!)
              : const SizedBox()),
    );
  }
}
