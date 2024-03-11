import 'dart:convert';
import 'package:movietrain/Api/linkapi/apikey.dart';
import 'package:movietrain/Api/modelapi/home/movies.dart';
import "package:http/http.dart" as http;

List<ResultsMovies> moviesPopularList = [];
List<ResultsMovies> moviesPlayingNowList = [];
List<ResultsMovies> moviesRatedList = [];

Future<void> getMoviesPopular() async {
  var response = await http.get(Uri.parse(AppLink.popularMovies));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    moviesPopularList.clear();
    moviesPopularList
        .addAll(responsebodyresulte.map((e) => ResultsMovies.fromJson(e)));
  } else {
    print("Error");
  }
}

Future<void> getMoviesNowPlaying() async {
  var response = await http.get(Uri.parse(AppLink.nowPlayingMovies));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    moviesPlayingNowList.clear();
    moviesPlayingNowList
        .addAll(responsebodyresulte.map((e) => ResultsMovies.fromJson(e)));
  } else {
    print("Error333333333333333333333333333333333333333333333333333");
  }
}

Future<void> getMoviestopRated() async {
  var response = await http.get(Uri.parse(AppLink.topRatedMovies));
  print(jsonDecode(response.body));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    moviesRatedList.clear();
    moviesRatedList
        .addAll(responsebodyresulte.map((e) => ResultsMovies.fromJson(e)));
  } else {
    print("Error3333333333333333333333333333333333333333333");
  }
}
