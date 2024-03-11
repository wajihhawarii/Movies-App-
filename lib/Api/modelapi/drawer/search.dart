class SearchModel {
  int? page;
  List<SearchResults>? results;
  int? totalPages;
  int? totalResults;

  SearchModel({this.page, this.results, this.totalPages, this.totalResults});

  SearchModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <SearchResults>[];
      json['results'].forEach((v) {
        results!.add(SearchResults.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

class SearchResults {
  bool? adult;
  String? backdropPath;
  int? id;
  String? name;
  String? originalLanguage;
  String? originalName;
  String? overview;
  String? posterPath;
  String? mediaType;
  List<int>? genreIds;
  double? popularity;
  String? firstAirDate;
  double? voteAverage;
  int? voteCount;
  List<String>? originCountry;
  String? title;
  String? originalTitle;
  String? releaseDate;
  bool? video;
  int? gender;
  String? knownForDepartment;
  String? profilePath;
  List<KnownFor>? knownFor;

  SearchResults(
      {this.adult,
      this.backdropPath,
      this.id,
      this.name,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.genreIds,
      this.popularity,
      this.firstAirDate,
      this.voteAverage,
      this.voteCount,
      this.originCountry,
      this.title,
      this.originalTitle,
      this.releaseDate,
      this.video,
      this.gender,
      this.knownForDepartment,
      this.profilePath,
      this.knownFor});

  SearchResults.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    id = json['id'];
    name = json['name'];
    originalLanguage = json['original_language'];
    originalName = json['original_name'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    genreIds = json['genre_ids'].cast<int>();
    popularity = json['popularity'];
    firstAirDate = json['first_air_date'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    originCountry = json['origin_country'].cast<String>();
    title = json['title'];
    originalTitle = json['original_title'];
    releaseDate = json['release_date'];
    video = json['video'];
    gender = json['gender'];
    knownForDepartment = json['known_for_department'];
    profilePath = json['profile_path'];
    if (json['known_for'] != null) {
      knownFor = <KnownFor>[];
      json['known_for'].forEach((v) {
        knownFor!.add(KnownFor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['id'] = id;
    data['name'] = name;
    data['original_language'] = originalLanguage;
    data['original_name'] = originalName;
    data['overview'] = overview;
    data['poster_path'] = posterPath;
    data['media_type'] = mediaType;
    data['genre_ids'] = genreIds;
    data['popularity'] = popularity;
    data['first_air_date'] = firstAirDate;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    data['origin_country'] = originCountry;
    data['title'] = title;
    data['original_title'] = originalTitle;
    data['release_date'] = releaseDate;
    data['video'] = video;
    data['gender'] = gender;
    data['known_for_department'] = knownForDepartment;
    data['profile_path'] = profilePath;
    if (knownFor != null) {
      data['known_for'] = knownFor!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class KnownFor {
  bool? adult;
  String? backdropPath;
  int? id;
  String? title;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? mediaType;
  List<int>? genreIds;
  double? popularity;
  String? releaseDate;
  bool? video;
  int? voteAverage;
  int? voteCount;

  KnownFor(
      {this.adult,
      this.backdropPath,
      this.id,
      this.title,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.genreIds,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount});

  KnownFor.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    id = json['id'];
    title = json['title'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    genreIds = json['genre_ids'].cast<int>();
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['id'] = id;
    data['title'] = title;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['poster_path'] = posterPath;
    data['media_type'] = mediaType;
    data['genre_ids'] = genreIds;
    data['popularity'] = popularity;
    data['release_date'] = releaseDate;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }
}
