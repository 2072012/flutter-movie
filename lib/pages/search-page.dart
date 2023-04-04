// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/movie.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
    required this.movies,
  });

  // var jsonList;
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1f1545),
      appBar: AppBar(backgroundColor: Color(0xFF1f1545), elevation: 0.0),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search for a movie",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff302360),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  hintText: "your movie title",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.purple.shade900,
                )),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: movies == null ? 0 : movies.length,
                itemBuilder: ((context, index) => ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      title: Text(
                        movies[index].title,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${movies[index].date}',
                        style: TextStyle(color: Colors.white60),
                      ),
                      trailing: Text('${movies[index].vote}',
                          style: TextStyle(color: Colors.amber)),
                      leading: Image.network(
                          'https://image.tmdb.org/t/p/original' +
                              movies[index].image),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
