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
      posterImg: 'assets/images/poster_ralph.png',
      title: 'Wreck It Ralph 2'),
  Movie(
      backgroundImg: 'assets/images/movie_onward.png',
      posterImg: 'assets/images/poster_onward.png',
      title: 'Onward'),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: 'assets/images/poster_dragon.png',
      title: 'How To Train Your Dargon'),
];
