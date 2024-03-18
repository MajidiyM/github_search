import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:github_search/repositories/models/models.dart';

class GithubRepo {
  get author => null;

  Future<List<Repos>> getRepos() async {
    try {
      final response = await Dio()
          .get("https://api.github.com/search/repositories?q=subject");
      debugPrint(response.toString());
      final data = response.data as Map<String?, dynamic>;
      final items = data["items"];

      final itemsList = items.map((items) {
        final title = items['name'] as String? ?? "Unknown name";
        final author = items['login'] as String? ?? "Unknown author";
        final views = items['watchers_count'].toString();
        final stars = items['stargazers_count'].toString();

        return Repos(
          title: title,
          author: author,
          views: views,
          stars: stars,
        );
      }).toList();

      return itemsList;
    } catch (e) {
      print("Error fetching repos list: $e");
      return [];
    }
  }
}
