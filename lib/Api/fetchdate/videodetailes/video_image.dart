import "dart:convert";
import "package:http/http.dart" as http;
import "package:movietrain/Api/fetchdate/videodetailes/vedios_informations.dart";
import "package:movietrain/Api/fetchdate/videodetailes/video_comment.dart";
import "package:movietrain/Api/linkapi/apikey.dart";
import 'package:movietrain/Api/modelapi/video_detailes/video_image.dart';

List<ResultsVideoKey> resultsVideoKey = [];

Future movieDetails(int id) async {
  var movietdatesurl =
      'https://api.themoviedb.org/3/movie/$id/videos?api_key=${AppLink.apiKey}';
  var movietrailersresponse = await http.get(Uri.parse(movietdatesurl));
  if (movietrailersresponse.statusCode == 200) {
    var movietrailersjson = jsonDecode(movietrailersresponse.body);
    resultsVideoKey.clear();
    for (var i = 0; i < movietrailersjson['results'].length; i++) {
      resultsVideoKey
          .add(ResultsVideoKey.fromJson(movietrailersjson['results'][i]));
    }
    resultsVideoKey.add(ResultsVideoKey.fromJson({"key": "ZaTUatY-UoU"}));
    print("111111111111111111111111111111111111111");
    print(resultsVideoKey[0].key);
    print("111111111111111111111111111111111111111");
    await movieInformation(id);
    print("7777777777777777777777777777777777777777777777777777777777777777");
    await movieComments(id);
    print("88888888888888888888888888888888888888888888888888888");
  } else {}
}
