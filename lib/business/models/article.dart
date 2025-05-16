import 'category.dart';


class Article {
  int id;
  String? title;
  String? slug;
  String? photo;
  String? content;
  int? nbr_comment;
  int? nb_Likes;
  List<Category>? category;
  List<dynamic>? tag;
  String? date_creation;
  String? lastmodif;
  bool? isLiked;
  String? token;

  Article({
    required this.id,
    this.title,
    this.slug,
    this.photo,
    this.content,
    this.nbr_comment,
    this.nb_Likes,
    this.category,
    this.tag,
    this.date_creation,
    this.lastmodif,
    this.isLiked,
    this.token,
  });

  Article copyWith({
    int? id,
    String? title,
    String? content,
    String? date_creation,
    String? photo,
    List<dynamic>? tag,
    List<Category>? category,
    int? nb_Likes,
    int? nbr_comment,
    bool? isLiked,
    String? token,
  }) {
    return Article(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      date_creation: date_creation ?? this.date_creation,
      photo: photo ?? this.photo,
      tag: tag ?? this.tag,
      category: category ?? this.category,
      nb_Likes: nb_Likes ?? this.nb_Likes,
      nbr_comment: nbr_comment ?? this.nbr_comment,
      isLiked: isLiked ?? this.isLiked,
      token: token ?? this.token,
    );
  }

  factory Article.fromMap(Map<String, dynamic> json) => Article(
    id: json["id"],
    title: json["title"],
    slug: json["slug"],
    photo: json["photo"],
    content: json["content"],
    nbr_comment: json["nbr_comment"],
    nb_Likes: json["nb_likes"],
    category: json["category"] == null
        ? []
        : List<Category>.from(
        json["category"].map((x) => Category.fromMap(x))),
    tag: json["tag"] == null
        ? []
        : List<dynamic>.from(json["tag"].map((x) => x)),
    date_creation: json["date_creation"],
    lastmodif: json["lastmodif"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "slug": slug,
    "photo": photo,
    "content": content,
    "nbr_comment": nbr_comment,
    "nb_likes": nb_Likes,
    "category": category == null
        ? []
        : List<dynamic>.from(category!.map((x) => x.toMap())),
    "tag": tag == null ? [] : List<dynamic>.from(tag!.map((x) => x)),
    "date_creation": date_creation,
    "lastmodif": lastmodif,
    "isLiked": isLiked,
    "token": token,
  };
}