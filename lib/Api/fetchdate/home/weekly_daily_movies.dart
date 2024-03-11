import "package:http/http.dart" as http;

import 'dart:convert';

import 'package:movietrain/Api/linkapi/apikey.dart';
import 'package:movietrain/Api/modelapi/home/weekly_daily_movie.dart';

List<Results> trendingweek = [];

//List<Map<String, dynamic>> trendingweek1 = [];
Future<void> getTrendMovies(String val) async {
  if (val == "Weekly") {
    var trendingweekresponse = await http.get(Uri.parse(AppLink.weeklyMovies));
    if (trendingweekresponse.statusCode == 200) {
      var tempdata = jsonDecode(trendingweekresponse.body);
      var trendingweekjson = tempdata['results']
          as List; // list احيانا يعطي اخطاء اذا ما وضعنا او قصدي قصرنا الى
      trendingweek.clear();
      trendingweek.addAll(
          trendingweekjson.map((e) => Results.fromJson(e))); //طريقة اولى

      // for (int i = 0; i < trendingweekjson.length; i++) {          طريقة تانية من اجل الاضافة على القائمة
      //   trendingweek.add(Results.fromJson(trendingweekjson[i]));

      // trendingweek.add({                                           //   اضيف على قائمة بشكل يدوي  model او انو ما عرف
      //   'id': trendingweekjson[i]['id'],
      //   'poster_path': trendingweekjson[i]['poster_path'],
      //   'vote_average': trendingweekjson[i]['vote_average'],
      //   'media_type': trendingweekjson[i]['media_type'],
      //   'indexno': i,
      // });

      // }
    } else {
      print("_ _ _ _ _ _ _ _ _ _Error_ _ _ _ _ _ _ _ _ _");
    }
  }

  if (val == "daily") {
    var trendingweekresponse = await http.get(Uri.parse(AppLink.dailyMovies));
    if (trendingweekresponse.statusCode == 200) {
      var tempdata = jsonDecode(trendingweekresponse.body);
      var trendingweekjson = tempdata['results']
          as List; // list احيانا يعطي اخطاء اذا ما وضعنا او قصدي قصرنا الى
      trendingweek.clear();
      trendingweek.addAll(
          trendingweekjson.map((e) => Results.fromJson(e))); //طريقة اولى

      // for (int i = 0; i < trendingweekjson.length; i++) {          طريقة تانية من اجل الاضافة على القائمة
      //   trendingweek.add(Results.fromJson(trendingweekjson[i]));

      // trendingweek.add({                                           //   اضيف على قائمة بشكل يدوي  model او انو ما عرف
      //   'id': trendingweekjson[i]['id'],
      //   'poster_path': trendingweekjson[i]['poster_path'],
      //   'vote_average': trendingweekjson[i]['vote_average'],
      //   'media_type': trendingweekjson[i]['media_type'],
      //   'indexno': i,
      // });

      // }
    } else {
      print("_ _ _ _ _ _ _ _ _ _Error_ _ _ _ _ _ _ _ _ _");
    }
  }
}
