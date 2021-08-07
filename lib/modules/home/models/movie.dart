class Movie {
  String posterImg;
  String backgroundImg;
  String title;

  Movie(
      {required this.posterImg,
      required this.backgroundImg,
      required this.title});
}

final List<String> genres = ['All', 'Action', 'Drama', 'Honor'];

final List<Movie> movies = [
  Movie(
      backgroundImg: 'assets/images/movie_ralph.png',
      posterImg: 'assets/images/movie_ralph.png',
      title: 'Wreck It Ralph'),
  Movie(
      backgroundImg: 'assets/images/movie_ralph.png',
      posterImg: 'assets/images/movie_ralph.png',
      title: 'Wreck It Ralph'),
  Movie(
      backgroundImg: 'assets/images/movie_ralph.png',
      posterImg: 'assets/images/movie_ralph.png',
      title: 'Wreck It Ralph'),
];
