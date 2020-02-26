import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:urbandic/WordDefinition.dart';
import 'package:http/http.dart' as http;

Map<String, String> get headers => {
        "x-rapidapi-host": "mashape-community-urban-dictionary.p.rapidapi.com",
        "x-rapidapi-key": "60d4cea793msh74a7f959c5b13b2p1efebejsnb166c4e70908",
      };

Future<List<WordDefinition>> fetchUrban(http.Client client, String term) async {
  final response = await client.get('https://mashape-community-urban-dictionary.p.rapidapi.com/define?term=$term',
    headers: headers
  );
  
  // Use the compute function to run parseWordDefinition in a separate isolate.
  return compute(parseWordDefinition, response.body);
}

// A function that converts a response body into a List<Photo>.
List<WordDefinition> parseWordDefinition(String responseBody) {
  final parsed = jsonDecode(responseBody)['list'].cast<Map<String, dynamic>>();

  return parsed.map<WordDefinition>((json) => WordDefinition.fromJson(json)).toList();
}