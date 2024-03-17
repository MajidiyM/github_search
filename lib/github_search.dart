import 'package:flutter/material.dart';
import 'package:github_search/theme/theme.dart';
import 'routes/routes.dart';

class GithubSearch extends StatelessWidget {
  const GithubSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: routes,
    );
  }
}
