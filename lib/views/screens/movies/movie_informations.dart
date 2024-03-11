import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/videodetailes/vedios_informations.dart';
import 'package:movietrain/core/constant/color.dart';

class MovieInformation extends StatelessWidget {
  const MovieInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        height: double.infinity,
        width: double.infinity,
        color: AppColor.black,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Movie Aboute...",
              style: TextStyle(
                  color: AppColor.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 400,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return alertDilag[index];
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        //color: const Color.fromARGB(255, 33, 76, 151),
                        color: Colors.black.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 5,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          name[index],
                          style: const TextStyle(
                              color: AppColor.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView(
                children: [
                  ContainInfo(
                    keyy: "title",
                    value: movieInformationModel1.title!,
                  ),
                  ContainInfo(
                    keyy: "release_date",
                    value: movieInformationModel1.releaseDate!,
                  ),
                  ContainInfo(
                    keyy: "vote_average",
                    value: movieInformationModel1.voteAverage.toString(),
                  ),
                  ContainInfo(
                    keyy: "status",
                    value: movieInformationModel1.status!,
                  ),
                  ContainInfo(
                    keyy: "imdb_id	",
                    value: movieInformationModel1.imdbId!,
                  ),
                ],
              ),
            ),

            //release_date
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(3, 3),
                      blurRadius: 4,
                      color: Colors.blue,
                    )
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black87,
                        // Colors.blue,
                        Colors.black87,
                      ]),
                ),
                child: const Center(
                    child: Text(
                  "Go To Back",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//movietrailerslist[0]

List name = [
  "production\ncompanies",
  "production\ncountries",
  "spoken\nlanguages",
  "genres",
];

List alertDilag = [
  AlertDialog(
    backgroundColor: AppColor.white.withOpacity(0.9),
    content: Container(
      height: 120,
      width: 220,
      child: Column(
        children: [
          Text("name :${productionCompaniesModel[0].name}"),
          const Divider(),
          Text("origin_country : ${productionCompaniesModel[0].originCountry}"),
          const Divider(),
          Text("id :${productionCompaniesModel[0].id}")
        ],
      ),
    ),
  ),
  AlertDialog(
    backgroundColor: AppColor.white.withOpacity(0.9),
    content: Container(
      height: 120,
      width: 220,
      child: Column(
        children: [
          Text("iso_3166_1	:	${productionCountriesModel[0].iso31661}"),
          const Divider(),
          Text("name	:	${productionCountriesModel[0].name}"),
          const Divider(),
        ],
      ),
    ),
  ),
  AlertDialog(
    backgroundColor: AppColor.white.withOpacity(0.9),
    content: Container(
      height: 120,
      width: 200,
      child: Column(
        children: [
          Text("englishName	:	${spokenLanguagesModel[0].englishName}"),
          const Divider(),
          Text("name	:${spokenLanguagesModel[0].name}"),
          const Divider(),
          Text("iso6391	:${spokenLanguagesModel[0].iso6391}"),
        ],
      ),
    ),
  ),
  AlertDialog(
    backgroundColor: AppColor.white.withOpacity(0.9),
    content: Container(
      height: 120,
      width: 200,
      child: Column(
        children: [
          Text("name:${genresModel[0].name}"),
          Divider(),
          Text("iso_639_1:${genresModel[0].id}"),
          Divider(),
        ],
      ),
    ),
  ),
];

class ContainInfo extends StatelessWidget {
  final String keyy;
  final String value;
  const ContainInfo({super.key, required this.keyy, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$keyy :",
            style: const TextStyle(
                color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            " $value",
            style: const TextStyle(
                color: AppColor.yellow,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


//https://api.themoviedb.org/3/movie/68078?api_key=447a18d5dc456886490284c7ec578fb4