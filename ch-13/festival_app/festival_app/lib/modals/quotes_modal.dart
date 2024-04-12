class Quote {
  String quote;
  String author;
  String category;
  String img;
  List<String> images;

  Quote({
    required this.quote,
    required this.author,
    required this.category,
    required this.img,
    required this.images,
  });

  factory Quote.fromMap({required Map data}) => Quote(
        quote: data['quote'],
        author: data['author'],
        category: data['category'],
        img: data['img'],
        images: List<String>.from(data['images']),
      );
}
