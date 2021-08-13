import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/models/cast.dart';

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
      backgroundImg: AssetPath.backgroundRalph,
      posterImg: AssetPath.posterRalphx2,
      title: 'Wreck It Ralph 2',
      trailerImg: '',
      casters: [
        Cast(name: 'Reilly', profileImageUrl: AssetPath.castJohnCReilly),
        Cast(name: 'Silverman', profileImageUrl: AssetPath.castSarahSilverman),
        Cast(name: 'McBrayer', profileImageUrl: AssetPath.castJackMcBrayer),
        Cast(name: 'Henson', profileImageUrl: AssetPath.castTarajiPHenson),
      ],
      trailers: [
        AssetPath.trailerRalph1x2,
        AssetPath.trailerRalph2x2
      ]),
  Movie(
      backgroundImg: AssetPath.backgroundOnward,
      posterImg: AssetPath.posterOnwardx2,
      title: 'Onward',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: AssetPath.backgroundDragon,
      posterImg: AssetPath.posterDragonx2,
      title: 'How To Train Your Dargon',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterScoobx2,
      title: 'The Spongebob Movie',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterFrozenx2,
      title: 'Frozen II',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterTopUpx2,
      title: 'Top Up Movie',
      trailerImg: '',
      casters: [],
      trailers: []),
  
];
