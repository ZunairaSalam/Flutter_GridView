import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  final recipeName;
  final recipeImage;
  final recipeTime;

  Recipe(
      {Key? key, @required this.recipeName, this.recipeImage, this.recipeTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent[700],
        title: Text(
          '$recipeName',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        //Text('$recipeImage,$recipeName,$recipeTime'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'lib/assets/$recipeImage',
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$recipeTime',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Ingredients',
                style: TextStyle(fontSize: 24, color: Colors.red)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: 500,
              child: Card(
                color: Colors.yellow[200],
                child: Text('Description of $recipeName'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
