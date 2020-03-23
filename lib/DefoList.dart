import 'package:flutter/material.dart';
import 'package:urbandic/ResultMeaning.dart';
import 'package:urbandic/WordDefinition.dart';

class DefoList extends StatelessWidget {
  final List<WordDefinition> words;

  DefoList({Key key, this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: words.length,
      itemBuilder: (context, index) {
        // return Image.network(words[index].definition);
        return ResultMeaningCard(
            definition: words[index].definition,
            permalink: words[index].permalink,
            word: words[index].word
        );
      },
    );
  }
}