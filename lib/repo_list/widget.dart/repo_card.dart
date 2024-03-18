import 'package:flutter/material.dart';
import 'package:github_search/repositories/models/github_repo_models.dart';

// Виджет карточек проектов
class RepoCard extends StatelessWidget {
  const RepoCard({
    super.key,
    required this.reposContent,
  });

  final Repos reposContent;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1b2333),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          // при нажатии на карточку выполняет действие
          onTap: () {
            print("pressed");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                reposContent.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10.0),
              Text(
                reposContent.author,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    reposContent.views,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_border,
                        color: Colors.white,
                        size: 22.0,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        reposContent.stars,
                        style: Theme.of(context).textTheme.displayMedium,
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
