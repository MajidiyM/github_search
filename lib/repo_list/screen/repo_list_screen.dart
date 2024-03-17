import 'package:flutter/material.dart';
import 'package:github_search/repo_list/widget.dart/widget.dart';

class RepoListScreen extends StatefulWidget {
  const RepoListScreen({super.key});

  @override
  State<RepoListScreen> createState() => _RepoListScreenState();
}

class _RepoListScreenState extends State<RepoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d1525),
      appBar: AppBar(
        title: const Text(
          "Git Search",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF24292f),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // поле поиска
            const TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  filled: true,
                  fillColor: Color(0xFF1b2333),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap:
                    true, // Указываем ListView сжиматься, чтобы занять только необходимое пространство
                itemBuilder: (context, index) => const RepoCard(),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
