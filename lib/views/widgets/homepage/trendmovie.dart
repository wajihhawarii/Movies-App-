import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/home/weekly_daily_movies.dart';
import 'package:movietrain/core/constant/color.dart';

// ignore: must_be_immutable
class TrendingMovies extends StatefulWidget {
  const TrendingMovies({super.key});

  @override
  State<TrendingMovies> createState() => _TrendingMovieState();
}

class _TrendingMovieState extends State<TrendingMovies> {
  List lan = ["daily", "Weekly"];
  String? valuee = "Weekly";

  @override
  Widget build(BuildContext context) {
    int counter = 0; //وضعناه هنا من اجل كل اعادة بناء يتم تهيئته بالصفر
    return FutureBuilder(
        future: getTrendMovies(valuee!), // Api جلب البيانات من
        builder: (context, snapshote) {
          if (snapshote.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: CarouselSlider(
                    options: CarouselOptions(
                        enlargeCenterPage: true, //تعني تكبير الصورة عند العرض
                        viewportFraction:
                            1, //تظهر الصورة كاكلة عند عرضها في سلايدر
                        height: 420, //ارتفاع السلايدر
                        autoPlay: true, //تفعيل الحركة
                        autoPlayAnimationDuration:
                            const Duration(seconds: 2), //مدة الانتقال
                        scrollDirection: Axis.horizontal //اتجاه السحب
                        //   reverse: true,   //حركة عكسية
                        ),
                    items: trendingweek.map((e) {
                      return Container(
                        decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500${e.posterPath.toString()}",
                                ),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("#${counter++}",
                                      style: const TextStyle(
                                          color: AppColor.yellow,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const Spacer(),
                                Container(
                                  margin: const EdgeInsets.all(12),
                                  padding: const EdgeInsets.all(6),
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppColor.yellow1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: AppColor.yellow,
                                      ),
                                      const Spacer(),
                                      Text(
                                        e.voteAverage.toString(),
                                        style: const TextStyle(
                                            fontSize: 18,
                                            color: AppColor.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                  height: 50,
                  //  width: 210,
                  left: 100,
                  top: 20,
                  child: Container(
                    child: Row(
                      children: [
                        const Text(
                          "Trendings 🔥",
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: DropdownButton(
                            dropdownColor: AppColor.black,
                            borderRadius: BorderRadius.circular(20),
                            icon: const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: AppColor.yellow,
                              size: 40,
                            ),

                            value: valuee, //العنصر المختار يعرض بجانب الزر
                            items: lan
                                .map((e) => DropdownMenuItem(
                                    value: e.toString(),
                                    child: Text(
                                      e.toString(),
                                      style: const TextStyle(
                                          color: AppColor.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                valuee = val.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const SizedBox(
              height: 400,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
