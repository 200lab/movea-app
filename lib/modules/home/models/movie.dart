import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/models/cast.dart';

class Movie {
  String posterImg;
  String backgroundImg;
  String title;
  String trailerImg;
  List<Cast> casters;
  List<String> trailers;

  Movie(
      {required this.posterImg,
      required this.backgroundImg,
      required this.title,
      required this.trailerImg,
      required this.casters,
      required this.trailers});
}

final List<String> genres = ['All', 'Action', 'Drama', 'Honor'];

final List<Movie> movies = [
  Movie(
      backgroundImg: 'assets/images/movie_ralph.png',
      posterImg: AssetPath.posterRalph,
      title: 'Wreck It Ralph 2',
      trailerImg: '',
      casters: [],
      trailers: [
        AssetPath.trailerRalph1x2,
        AssetPath.trailerRalph2x2
      ]),
  Movie(
      backgroundImg: 'assets/images/movie_onward.png',
      posterImg: AssetPath.posterOnward,
      title: 'Onward',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterDragon,
      title: 'How To Train Your Dargon',
      trailerImg: '',
      casters: [],
      trailers: []),
];
