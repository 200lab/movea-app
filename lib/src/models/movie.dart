import '../constants/asset_path.dart';
import 'cast.dart';

enum TicketStates { idle, busy, active }

//app data right here
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

final List<String> genres = [
  'All',
  'Action',
  'Drama',
  'Honor',
  'Romance',
  'Fantasy'
];

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
];


final List<String> days = ['SAT', 'SUN', 'MON', 'TUE'];
final List<String> times = ['12:20', '14:30', '16:40', '19:00'];

final List<TicketStates> dateStates = [
  TicketStates.idle,
  TicketStates.active,
  TicketStates.busy,
  TicketStates.idle
];
final List<TicketStates> timeStates_1 = [
  TicketStates.idle,
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.idle
];
final List<TicketStates> timeStates_2 = [
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.active,
  TicketStates.idle
];
final List<TicketStates> timeStates_3 = [
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.idle,
  TicketStates.idle
];
final List<TicketStates> timeStates_4 = [
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.idle,
  TicketStates.idle
];