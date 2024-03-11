import 'package:movietrain/Api/fetchdate/videodetailes/vedios_informations.dart';
import 'package:movietrain/Api/fetchdate/videodetailes/video_image.dart';
import 'package:movietrain/views/screens/movies/movie_informations.dart';
import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/home/movies.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/core/functions/sliderlist.dart';
import 'package:movietrain/views/screens/home/homepage.dart';
import 'package:movietrain/views/widgets/TrailerUI.dart';

class MovieDetailes extends StatefulWidget {
  final id;
  const MovieDetailes({super.key, this.id});

  @override
  State<MovieDetailes> createState() => _MovieDetailesState();
}

class _MovieDetailesState extends State<MovieDetailes> {
  //List<Map<String, dynamic>> MovieDetails = [];
  //List<Map<String, dynamic>> UserREviews = [];
  //List<Map<String, dynamic>> similarmovieslist = [];
  //List<Map<String, dynamic>> recommendedmovieslist = [];
  //List MoviesGeneres = [];

  //Future Moviedetails() async {

  // var moviedetailurl =
  //     'https://api.themoviedb.org/3/movie/${widget.id}?api_key=${AppLink.apiKey}';
  // // ignore: non_constant_identifier_names
  // var UserReviewurl =
  //     'https://api.themoviedb.org/3/movie/${widget.id}/reviews?api_key=${AppLink.apiKey}';
  // var similarmoviesurl =
  //     'https://api.themoviedb.org/3/movie/${widget.id}/similar?api_key=${AppLink.apiKey}';
  // var recommendedmoviesurl =
  //     'https://api.themoviedb.org/3/movie/${widget.id}/recommendations?api_key=${AppLink.apiKey}';

//     var moviedetailresponse = await http.get(Uri.parse(moviedetailurl));
//     if (moviedetailresponse.statusCode == 200) {
//       var moviedetailjson = jsonDecode(moviedetailresponse.body);
//       for (var i = 0; i < 1; i++) {
//         MovieDetails.add({
//           "backdrop_path": moviedetailjson['backdrop_path'],
//           "title": moviedetailjson['title'],
//           "vote_average": moviedetailjson['vote_average'],
//           "overview": moviedetailjson['overview'],
//           "release_date": moviedetailjson['release_date'],
//           "runtime": moviedetailjson['runtime'],
//           "budget": moviedetailjson['budget'],
//           "revenue": moviedetailjson['revenue'],
//         });
//       }
//       for (var i = 0; i < moviedetailjson['genres'].length; i++) {
//         MoviesGeneres.add(moviedetailjson['genres'][i]['name']);
//       }
//     } else {}
// ///////////////////////////////////////////////////////////////////////////////////////////////
//     /////////////////////////////User Reviews///////////////////////////////
//     var UserReviewresponse = await http.get(Uri.parse(UserReviewurl));
//     if (UserReviewresponse.statusCode == 200) {
//       var UserReviewjson = jsonDecode(UserReviewresponse.body);
//       for (var i = 0; i < UserReviewjson['results'].length; i++) {
//         UserREviews.add({
//           "name": UserReviewjson['results'][i]['author'],
//           "review": UserReviewjson['results'][i]['content'],
//           //check rating is null or not
//           "rating":
//               UserReviewjson['results'][i]['author_details']['rating'] == null
//                   ? "Not Rated"
//                   : UserReviewjson['results'][i]['author_details']['rating']
//                       .toString(),
//           "avatarphoto": UserReviewjson['results'][i]['author_details']
//                       ['avatar_path'] ==
//                   null
//               ? "https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png"
//               : "https://image.tmdb.org/t/p/w500" +
//                   UserReviewjson['results'][i]['author_details']['avatar_path'],
//           "creationdate":
//               UserReviewjson['results'][i]['created_at'].substring(0, 10),
//           "fullreviewurl": UserReviewjson['results'][i]['url'],
//         });
//       }
//     } else {}
//     /////////////////////////////similar movies
//     var similarmoviesresponse = await http.get(Uri.parse(similarmoviesurl));
//     if (similarmoviesresponse.statusCode == 200) {
//       var similarmoviesjson = jsonDecode(similarmoviesresponse.body);
//       for (var i = 0; i < similarmoviesjson['results'].length; i++) {
//         similarmovieslist.add({
//           "poster_path": similarmoviesjson['results'][i]['poster_path'],
//           "name": similarmoviesjson['results'][i]['title'],
//           "vote_average": similarmoviesjson['results'][i]['vote_average'],
//           "Date": similarmoviesjson['results'][i]['release_date'],
//           "id": similarmoviesjson['results'][i]['id'],
//         });
//       }
//     } else {}
//     // print(similarmovieslist);
//     /////////////////////////////recommended movies
//     var recommendedmoviesresponse =
//         await http.get(Uri.parse(recommendedmoviesurl));
//     if (recommendedmoviesresponse.statusCode == 200) {
//       var recommendedmoviesjson = jsonDecode(recommendedmoviesresponse.body);
//       for (var i = 0; i < recommendedmoviesjson['results'].length; i++) {
//         recommendedmovieslist.add({
//           "poster_path": recommendedmoviesjson['results'][i]['poster_path'],
//           "name": recommendedmoviesjson['results'][i]['title'],
//           "vote_average": recommendedmoviesjson['results'][i]['vote_average'],
//           "Date": recommendedmoviesjson['results'][i]['release_date'],
//           "id": recommendedmoviesjson['results'][i]['id'],
//         });
//       }
//     } else {}
  // print(recommendedmovieslist);
  /////////////////////////////movie trailers
  //   var movietrailersresponse = await http.get(Uri.parse(movietrailersurl));
  //   if (movietrailersresponse.statusCode == 200) {
  //     print("11111111111111111111111111111111111");
  //     var movietrailersjson = jsonDecode(movietrailersresponse.body);
  //     for (var i = 0; i < movietrailersjson['results'].length; i++) {
  //       movietrailerslist.add(
  //           ResultsVideoDetailes.fromJson(movietrailersjson['results'][i]));
  //     }
  //   } else {
  //     print("Error");
  //   }
  // }

  bool swit = true;
  int itemcount = 5;

  @override
  Widget build(BuildContext context) {
    print("1111111111111111111111111111111111");
    print(widget.id);
    print("11111111111111111111111111111111111");
    return Scaffold(
        backgroundColor: AppColor.black,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black87,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder(
                      future: movieDetails(widget.id),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            width: double.infinity,
                            height: 250,
                            child: trailerwatch(
                              trailerytid: resultsVideoKey[0]
                                  .key, //مفتاح الفديو لتشغيل مقاطع اليوتيوب
                            ),
                          );
                        } else {
                          return const SizedBox(
                              width: double.infinity,
                              height: 250,
                              child:
                                  Center(child: CircularProgressIndicator()));
                        }
                      },
                    ),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                color: AppColor.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Crime",
                                  style: TextStyle(
                                      color: AppColor.yellow,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 50,
                      //  width: 90,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Text(
                              "${movieInformationModel1.runtime.toString()} Min",
                              style: const TextStyle(
                                  color: AppColor.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.blue),
                            child: const Text(
                              "Information About",
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const MovieInformation();
                              }));
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Text(
                          "Movie Story \n\n ${movieInformationModel1.overview})",
                          style: const TextStyle(color: AppColor.grey),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          const Text("User Reviews",
                              style: TextStyle(
                                  color: AppColor.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          const Spacer(),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  !swit;
                                });
                              },
                              child: const Text("All Reviews 5 >",
                                  style: TextStyle(
                                      fontSize: 15, color: AppColor.white)))
                        ],
                      ),
                    ),
                    Container(
                        height: 300,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount:
                              5, ///////////////////////////////////////////////
                          separatorBuilder: (context, x) {
                            return const SizedBox(
                              height: 5,
                            );
                          },
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(5),
                              // height: 80,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: AppColor.white,
                                        backgroundImage:
                                            AssetImage("images/car.jpg"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "futuretv \n 2014-04-10",
                                        style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: AppColor.yellow,
                                      ),
                                      Text(
                                        "10.0",
                                        style: TextStyle(
                                            color: AppColor.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    ''' rebirth, or resoma (when they are reborn into a new soma or physical body). The term Proexis is an advanced concept that involves multiexistential and multidimensional elements, that is, it takes into consideration our actions across many lives and dimensions. It’s also innovative in its meaning because the when they are reborn into a new soma or physical body''',
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                    sliderList(moviesPlayingNowList, "nowPlayingMovies",
                        getMoviesNowPlaying()),
                    sliderList(moviesRatedList, "top_rated Movies",
                        getMoviestopRated())
                  ],
                ),
              ),
            ),

            //////////////////////////////////////////////////////
            Positioned(
                child: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop;
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: AppColor.white,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ))
          ],
        ));
  }
}





//stack عندما نريد لواجهة ان يكون فيها دولاب ولانريد ان نحرك الواجهة التي فوقها نستخدم 
//دائما يجب ان نضع القوائم في مجال محدد من اجل ان لا يطي اخطاء
//اذا استخدمنا قائمتين بداخل بعض الاننسى ان نضع
//غالبا العناصر التي تعتمد على بعض تكون مرتبطة من خلال الدليل 