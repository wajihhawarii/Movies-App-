import 'dart:convert';
import 'package:movietrain/Api/linkapi/apikey.dart';
import "package:http/http.dart" as http;
import 'package:movietrain/Api/modelapi/home/upcoming.dart';

List<ResultsUpcoming> upComingList = [];

Future<void> getupcoming() async {
  var response = await http.get(Uri.parse(AppLink.upcomming));
  if (response.statusCode == 200 || response.statusCode == 201) {
    var responsebody = jsonDecode(response.body);
    var responsebodyresulte = responsebody["results"] as List;
    upComingList.clear();
    upComingList
        .addAll(responsebodyresulte.map((e) => ResultsUpcoming.fromJson(e)));
  } else {
    print("Error");
  }
}
