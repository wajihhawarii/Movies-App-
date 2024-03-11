import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:movietrain/Api/linkapi/apikey.dart';
import 'package:movietrain/Api/modelapi/drawer/search.dart';

List<SearchResults> searchRes = [];
Future<void> searchlistfunction(val) async {
  var searchurl =
      'https://api.themoviedb.org/3/search/multi?api_key=${AppLink.apiKey}&query=$val';
  var searchresponse = await http.get(Uri.parse(searchurl));
  if (searchresponse.statusCode == 200) {
    var tempdata = jsonDecode(searchresponse.body);
    var searchjson = tempdata['results'];
    for (var i = 0; i < searchjson.length; i++) {
      //only add value if all are present
      if (searchjson[i]['id'] != null &&
          searchjson[i]['poster_path'] != null &&
          searchjson[i]['vote_average'] != null &&
          searchjson[i]['media_type'] != null) {
        searchRes.add(SearchResults.fromJson(searchjson[i]));
        if (searchRes.length > 20) {
          searchRes.removeRange(
              20,
              searchRes
                  .length); //تعني اذا كان طول قائمة البحث اكتر من عشرين عنصر يحذف الباقي
        }
      } else {
        print("111111111111111111111111111111111111111");
      }
    }
  }
}
