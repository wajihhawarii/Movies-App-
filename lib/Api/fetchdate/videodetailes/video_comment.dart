import "dart:convert";
import "package:http/http.dart" as http;
import "package:movietrain/Api/linkapi/apikey.dart";
import "package:movietrain/Api/modelapi/video_detailes/video_comment.dart";

List<ResultsComments> resultsComments = [];

Future movieComments(int id) async {
  var movieCommentUrl =
      'https://api.themoviedb.org/3/movie/$id/reviews?api_key=${AppLink.apiKey}';
  var movieCommentResponse = await http.get(Uri.parse(movieCommentUrl));
  if (movieCommentResponse.statusCode == 200) {
    var resultsCommentsjson = jsonDecode(movieCommentResponse.body);
    var resultsCommentsjsonlist = resultsCommentsjson["results"] as List;
    resultsComments.clear();
    resultsComments.addAll(
        resultsCommentsjsonlist.map((e) => ResultsComments.fromJson(e)));
    print("111111111111166666666666666666666666111");
    print(resultsCommentsjsonlist);
    print(resultsComments);
    print("111111111111166666666666666666666666111");
  } else {}
}
