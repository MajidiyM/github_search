import 'package:flutter/material.dart';

class RepoCard extends StatelessWidget {
  const RepoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Color(0xFF1b2333),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            print("pressed");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Project Author",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    "Views: 100",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.white,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "100",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
