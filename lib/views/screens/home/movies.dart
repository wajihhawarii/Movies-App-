import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/home/movies.dart';
import 'package:movietrain/core/functions/sliderlist.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sliderList(moviesPopularList, "popular Movies", getMoviesPopular()),
          sliderList(
              moviesPlayingNowList, "nowPlayingMovies", getMoviesNowPlaying()),
          sliderList(moviesRatedList, "top_rated Movies", getMoviestopRated()),
        ],
      ),
    );
  }
}
