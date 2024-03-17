import 'package:flutter/material.dart';

// Виджет карточек проектов
class RepoCard extends StatelessWidget {
  const RepoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1b2333),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell( // при нажатии на карточку выполняет действие
          onTap: () {
            print("pressed");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Name",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10.0),
              Text(
                "Project Author",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    "Views: 100",
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
                        "100",
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
