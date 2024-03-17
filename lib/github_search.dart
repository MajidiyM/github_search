import 'package:flutter/material.dart';
// import 'theme/theme.dart';
import 'routes/routes.dart';

class GithubSearch extends StatelessWidget {
  const GithubSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: darkTheme,
      routes: routes,
    );
  }
}
