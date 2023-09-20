import 'dart:convert';

import 'package:http/http.dart' as http;

import '../controller/AudioController.dart';
import 'model/Posts.dart';

class DataSource {
  static DataSource dataSource = DataSource();
  Future<List<Posts>> get_Posts() async {
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      List<Posts> posts = jsonDecode(response.body)
          .map<Posts>((e) => Posts.fromJson(e))
          .toList();
      if (response.statusCode == 200) {
        AudioController.audioController.play();
      }
      return posts;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<Posts>> get_some_Posts() async {
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      List<Posts> posts = jsonDecode(response.body)
          .map<Posts>((e) => Posts.fromJson(e))
          .toList();
      if (response.statusCode == 200) {
        AudioController.audioController.pause();
      }
      return posts;
    } catch (e) {
      throw Exception(e);
    }
    throw Exception();
  }
}
