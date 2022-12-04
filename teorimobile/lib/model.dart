
class ProductDataModel {
  List<ProductData>? product;
  ProductDataModel({this.product});
  ProductDataModel.fromJson(List<dynamic> json) {
    if (json != null) {
      product = <ProductData>[];
      json.forEach((v) {
        product!.add(new ProductData.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['*'] = this.product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class ProductData {
  final int? id;
  final String? title;
  final String? thumbnail;
  final String? shortDescription;
  final String? gameUrl;
  final String? genre;
  final String? platform;
  final String? publisher;
  final String? developer;
  final String? releaseDate;
  final String? freetogameProfileUrl;

  ProductData({
    this.id,
    this.title,
    this.thumbnail,
    this.shortDescription,
    this.gameUrl,
    this.genre,
    this.platform,
    this.publisher,
    this.developer,
    this.releaseDate,
    this.freetogameProfileUrl,
  });

  ProductData.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      title = json['title'] as String?,
      thumbnail = json['thumbnail'] as String?,
      shortDescription = json['short_description'] as String?,
      gameUrl = json['game_url'] as String?,
      genre = json['genre'] as String?,
      platform = json['platform'] as String?,
      publisher = json['publisher'] as String?,
      developer = json['developer'] as String?,
      releaseDate = json['release_date'] as String?,
      freetogameProfileUrl = json['freetogame_profile_url'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'title' : title,
    'thumbnail' : thumbnail,
    'short_description' : shortDescription,
    'game_url' : gameUrl,
    'genre' : genre,
    'platform' : platform,
    'publisher' : publisher,
    'developer' : developer,
    'release_date' : releaseDate,
    'freetogame_profile_url' : freetogameProfileUrl
  };
}