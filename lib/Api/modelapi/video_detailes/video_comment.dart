class VideoComment {
  int? id;
  int? page;
  List<ResultsComments>? results;
  int? totalPages;
  int? totalResults;

  VideoComment(
      {this.id, this.page, this.results, this.totalPages, this.totalResults});

  VideoComment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    page = json['page'];
    if (json['results'] != null) {
      results = <ResultsComments>[];
      json['results'].forEach((v) {
        results!.add(ResultsComments.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

class ResultsComments {
  String? author;
  AuthorDetails? authorDetails;
  String? content;
  String? createdAt;
  String? id;
  String? updatedAt;
  String? url;

  ResultsComments(
      {this.author,
      this.authorDetails,
      this.content,
      this.createdAt,
      this.id,
      this.updatedAt,
      this.url});

  ResultsComments.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    authorDetails = json['author_details'] != null
        ? AuthorDetails.fromJson(json['author_details'])
        : null;
    content = json['content'];
    createdAt = json['created_at'];
    id = json['id'];
    updatedAt = json['updated_at'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = author;
    if (authorDetails != null) {
      data['author_details'] = authorDetails!.toJson();
    }
    data['content'] = content;
    data['created_at'] = createdAt;
    data['id'] = id;
    data['updated_at'] = updatedAt;
    data['url'] = url;
    return data;
  }
}

class AuthorDetails {
  String? name;
  String? username;
  String? avatarPath;
  int? rating;

  AuthorDetails({this.name, this.username, this.avatarPath, this.rating});

  AuthorDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    avatarPath = json['avatar_path'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['username'] = username;
    data['avatar_path'] = avatarPath;
    data['rating'] = rating;
    return data;
  }
}
