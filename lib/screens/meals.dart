import 'package:flutter/material.dart';
import 'package:meals_app/model/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.meals,
    required this.title,
  });
  final String title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(itemBuilder: (context, index) {
      return Text(meals[index].title);
    });
    if (meals.isEmpty) {
      content = Center(
        child: Column(children: [
          const Text('Nothing here....'),
          const SizedBox(height: 10),
          Text(
            'Try selecting a different category',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          )
        ]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
