class AppLink {
  static const String apiKey = "";
  static const String weeklyMovies =
      "https://api.themoviedb.org/3/trending/all/week?api_key=$apiKey";
  static const String dailyMovies =
      "https://api.themoviedb.org/3/trending/all/day?api_key=$apiKey";

/////////////////////### tv.seres ###//////////////////////////////////////////////////
  static const String popularTv =
      "https://api.themoviedb.org/3/tv/popular?api_key=$apiKey";
  static const String toprRatedTv =
      "https://api.themoviedb.org/3/tv/top_rated?api_key=$apiKey";
  static const String ontTheAirTv =
      "https://api.themoviedb.org/3/tv/on_the_air?api_key=$apiKey";

////////////////////### moveis ###//////////////////////////////////////////////////
  static const String popularMovies =
      "https://api.themoviedb.org/3/movie/popular?api_key=$apiKey";
  static const String nowPlayingMovies =
      "https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey";
  static const String topRatedMovies =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey";

////////////////////### upcomming ###////////////////////////////////////////////////
  static const String upcomming =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey";

/////////////////////### videoDetailes ###///////////////////////////////////////////
}
