import "dart:convert";
import "package:http/http.dart" as http;
import "package:movietrain/Api/linkapi/apikey.dart";
import 'package:movietrain/Api/modelapi/video_detailes/video_information.dart';

late MovieInformationModel movieInformationModel1;

List<GenresModel> genresModel = [];
List<ProductionCompaniesModel> productionCompaniesModel = [];
List<ProductionCountriesModel> productionCountriesModel = [];
List<SpokenLanguagesModel> spokenLanguagesModel = [];

Future movieInformation(int id) async {
  var movietrailersurl =
      'https://api.themoviedb.org/3/movie/$id?api_key=${AppLink.apiKey}';

  var movietrailersresponse = await http.get(Uri.parse(movietrailersurl));
  if (movietrailersresponse.statusCode == 200) {
    var movietrailersjson = jsonDecode(movietrailersresponse.body);

    movieInformationModel1 = MovieInformationModel.fromJson(movietrailersjson);

    genresModel.clear();
    genresModel.add(GenresModel.fromJson(movietrailersjson["genres"][0]));

    productionCompaniesModel.clear();
    productionCompaniesModel.add(ProductionCompaniesModel.fromJson(
        movietrailersjson["production_companies"][0]));

    productionCountriesModel.clear();
    productionCountriesModel.add(ProductionCountriesModel.fromJson(
        movietrailersjson["production_countries"][0]));

    spokenLanguagesModel.clear();
    spokenLanguagesModel.add(SpokenLanguagesModel.fromJson(
        movietrailersjson["spoken_languages"][0]));
  } else {}
}
