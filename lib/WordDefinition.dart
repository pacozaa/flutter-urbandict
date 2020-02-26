class WordDefinition {
  final String definition;
  final String permalink;
  final String author;
  final String word;

  WordDefinition({this.definition, this.permalink, this.author, this.word});

  factory WordDefinition.fromJson(Map<String, dynamic> json) {
    return WordDefinition(
        definition: json['definition'] as String,
        permalink: json['permalink'] as String,
        author: json['author'] as String,
        word: json['word'] as String);
  }
}
