import 'dart:convert';

import 'package:movietrain/Api/linkapi/apikey.dart';
import 'package:movietrain/Api/modelapi/tv_series/tv_series_onair.dart';
import 'package:movietrain/Api/modelapi/tv_series/tv_series_popular.dart';
import 'package:movietrain/Api/modelapi/tv_series/tv_series_rated.dart';

import "package:http/http.dart" as http;

List<ResultsTvPopular> tvSeriesPopularList = [];
List<ResultsTvRated> tvSeriesRatedList = [];
List<ResultsTvONTheAir> tvSeriesOnTheAirList = [];

Future<void> getTvSeriesPopular() async {
  var response = await http.get(Uri.parse(AppLink.popularTv));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    tvSeriesPopularList.clear();
    tvSeriesPopularList
        .addAll(responsebodyresulte.map((e) => ResultsTvPopular.fromJson(e)));
  } else {
    print("Error");
  }
}

Future<void> getTvSeriestoprRated() async {
  var response = await http.get(Uri.parse(AppLink.toprRatedTv));
  print(jsonDecode(response.body));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    tvSeriesRatedList.clear();
    tvSeriesRatedList
        .addAll(responsebodyresulte.map((e) => ResultsTvRated.fromJson(e)));
  } else {
    print("Error3333333333333333333333333333333333333333333");
  }
}

Future<void> getTvSeriesontTheAir() async {
  var response = await http.get(Uri.parse(AppLink.ontTheAirTv));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    tvSeriesOnTheAirList.clear();
    tvSeriesOnTheAirList
        .addAll(responsebodyresulte.map((e) => ResultsTvONTheAir.fromJson(e)));
  } else {
    print("Error333333333333333333333333333333333333333333333333333");
  }
}
