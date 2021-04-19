import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RecipeView.dart';

class HomeView extends StatelessWidget {
  final List<String> recipeNames = <String>[
    "Egg Benedict",
    "Mushroom Risotto",
    "Full Breakfast",
    "Hamburger",
    "Ham and Egg Sandwich",
    "Creme Brulee",
    "White Chocolate Donut",
    "Starbucks Coffee",
    "Vegetable Curry",
    "Instant Noodle with Egg",
    "Noodle with BBQ",
    "Japanese Noodle",
    "Green Tea",
    "Thai Shrimp Cake",
    "Angry Birds Cake",
    "Ham and Cheese Panini"
  ];

  final List recipeImages = [
    "egg_benedict.jpg",
    "mushroom_risotto.jpg",
    "full_breakfast.jpg",
    "hamburger.jpg",
    "ham_and_egg_sandwich.jpg",
    "creme_brulee.jpg",
    "white_choc_donut.jpg",
    "starbucks_coffee.jpg",
    "vegetable_curry.jpg",
    "instant_noodle_egg.jpg",
    "noodle_with_bbq.jpg",
    "japanese_noodle.jpg",
    "green_tea.jpg",
    "thai_shrimp_cake.jpg",
    "angry_birds_cake.jpg",
    "panini.jpg"
  ];

  final List<String> prepTime = <String>[
    "Prep Time = 20 min",
    "Prep Time = 30 min",
    "Prep Time = 20 min",
    "Prep Time = 10 min",
    "Prep Time = 30 min",
    "Prep Time = 20 min",
    "Prep Time = 1 hour",
    "Prep Time = 10 min",
    "Prep Time = 30 min",
    "Prep Time = 30 min",
    "Prep Time = 25 min",
    "Prep Time = 20 min",
    "Prep Time = 15 min",
    "Prep Time = 1 hour",
    "Prep Time = 20 min",
    "Prep Time = 10 min",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amberAccent[700],
        title: Text(
          'Recipe Book',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: new List<Widget>.generate(recipeImages.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Recipe(
                          recipeName: recipeNames[index],
                          recipeImage: recipeImages[index],
                          recipeTime: prepTime[index],
                        )),
              );
            },
            child: new GridTile(
              child: new Card(
                color: Colors.blue[100],
                //child: Text('$recipeImages[0]'),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'lib/assets/${recipeImages[index]}',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Text('${prepTime[index]}'),
                  ],
                ),
                //
              ),
            ),
          );
        }),
      ),
    );
  }
}
