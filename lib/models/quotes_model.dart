//Model Class
class QuotesModel {
  //Attributes
  String quote, author, category, date, source, context, popularity;
  int likes, favorites, shares, comments;

  //Constructor
  QuotesModel(
      this.quote,
      this.author,
      this.category,
      this.date,
      this.source,
      this.context,
      this.popularity,
      this.likes,
      this.favorites,
      this.shares,
      this.comments);

  //Factory  Constructor
  factory QuotesModel.fromMap({required Map data}) => QuotesModel(
      data['quote'],
      data['author'],
      data['category'],
      data['date'],
      data['source'],
      data['context'],
      data['popularity'],
      data['likes'],
      data['favorites'],
      data['shares'],
      data['comments']);

  //MapGetter
  Map<String, dynamic> get toMaps => {
        'quote': quote,
        'category': category,
        'author': author,
        'date': date,
        'source': source,
        'context': context,
        'popularity': popularity,
        'likes': likes,
        'favorites': favorites,
        'shares': shares,
        'comments': comments,
      };
}
