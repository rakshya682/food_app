import 'package:flutter/material.dart';

class RecipeDetail extends StatelessWidget {
  final String recipeName;

  RecipeDetail(this.recipeName);

  final Map<String, Map<String, dynamic>> recipes = {
    'Yomari - Newari Delight': {
      'ingredients': [
        '2 cups rice flour',
        '1.5 cups hot water',
        '1 cup chaku',
        '1/2 cup sesame seeds',
        '1/2 cup grated coconut (optional)',
        '1 tablespoon ghee (clarified butter)',
      ],
      'steps': [
        'Boil the water and let it cool slightly until it\'s hot but manageable for mixing.',
        'In a large mixing bowl, gradually add the hot water to the rice flour, mixing continuously to form a smooth, non-sticky dough.',
        'Knead well until the dough is soft and pliable.',
        'Cover the dough with a damp cloth and let it rest for about 30 minutes.',
        'In a pan, melt the chaku or jaggery over low heat. Once melted, add the sesame seeds and grated coconut. Mix well and let it cool.',
        'Shape the dough into small balls and flatten them. Place the filling in the center and fold the edges to form a round shape.',
        'Steam the yomari for about 10-15 minutes or until they are cooked through.',
      ],
    },
    'Chatamarit': {
      'ingredients': [
        '2 eggs',
      ],
      'steps': [
        'Prepare the Batter',

      ],
    },
    // Add other recipes similarly

  };

  @override
  Widget build(BuildContext context) {
    final recipe = recipes[recipeName];

    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ...recipe!['ingredients']
                .map<Widget>((ingredient) => Text(ingredient))
                .toList(),
            SizedBox(height: 20),
            Text(
              'Steps:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ...recipe['steps']
                .map<Widget>((step) => Text(step))
                .toList(),
          ],
        ),
      ),
    );
  }
}
