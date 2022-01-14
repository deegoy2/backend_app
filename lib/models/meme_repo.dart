import 'dart:convert';
import 'package:http/http.dart' as http;

import 'meme.dart';

class MemeRepo {
  Future<Meme> getMeme() async {
    http.Response response = await http.get(Uri.parse("https://some-random-api.ml/meme"));
    print(response.body.toString());
    Map<String, dynamic> singleMemeJson = jsonDecode(response.body);
    return Meme.fromJson(singleMemeJson);
  }
}