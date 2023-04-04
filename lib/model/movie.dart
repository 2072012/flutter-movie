class Movie {
  String title;
  String date;
  String vote;
  String image;

  Movie(
      {required this.title,
      required this.date,
      required this.vote,
      required this.image});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['original_title'],
      date: json['release_date'],
      vote: json['vote_average'].toString(),
      image: json['backdrop_path'],
    );
  }
}
