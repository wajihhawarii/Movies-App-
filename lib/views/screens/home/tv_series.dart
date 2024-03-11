import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/home/tvseries.dart';
import 'package:movietrain/core/functions/sliderlist.dart';

class TvSeries extends StatelessWidget {
  const TvSeries({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sliderList(
              tvSeriesPopularList, "popular TvSeries", getTvSeriesPopular()),
          sliderList(
              tvSeriesRatedList, "top_rated Tv Series", getTvSeriestoprRated()),
          sliderList(tvSeriesOnTheAirList, "on_The_Air Tv Series",
              getTvSeriesontTheAir()),
        ],
      ),
    );
  }
}
