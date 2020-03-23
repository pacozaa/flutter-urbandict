import 'package:flutter/material.dart';

class ResultMeaningCard extends StatelessWidget {
  const ResultMeaningCard({
    Key key,
    this.definition,
    this.permalink,
    this.word
  }) : super(key: key);
  final String definition;
  final String permalink;
  final String word;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(word+' : '+definition)
        )),
    );
  }
}