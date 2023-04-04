import 'package:dio/dio.dart';
import 'package:movie/model/movie.dart';

class MovieRepository {
  final Dio _dio;

  MovieRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<List<Movie>> getMovies() async {
    var response = await _dio.get(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=75889cd98ea0e5d99a2be7bfb1bfd72d',
    );

    if (response.statusCode == 200) {
      return (response.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList()
          .sublist(0, 10);
    } else {
      throw Exception('Failed to load cocktails');
    }
  }
}
