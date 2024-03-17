import 'package:flutter/material.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            // поле поиска
            TextField(
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
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Color(0xFF1b2333),
              child: ListTile(
                title: Text(
                  "project.name",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Author: project.author',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Watchers: project.watchers',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          color: Colors.white,
                          Icons.star_border,
                        ),
                        SizedBox(
                            width: 5), // Adjust spacing between icon and text
                        Text(
                          '100',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ), // Number of stars
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
