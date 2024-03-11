import "package:flutter/material.dart";
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/views/screens/movies/moviedetailes.dart';

Widget sliderList(List listname, String title, Future<void> getDate) {
  return FutureBuilder(
      future: getDate,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
              Container(
                height: 260,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listname.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return MovieDetailes(id: listname[index].id); //
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 260,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500${listname[index].backdropPath}"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "2020-23-2",
                                        style: TextStyle(color: AppColor.white),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 50,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.yellow,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2),
                                          child: Row(children: [
                                            Icon(Icons.add),
                                            Spacer(),
                                            Text("5,3")
                                          ]),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          );
        } else {
          return Container(
            height: 200,
            width: double.infinity,
            child: const Center(child: CircularProgressIndicator()),
          );
        }
      });
}
