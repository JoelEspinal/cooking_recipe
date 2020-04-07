import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryid;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryid, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.categoryTitle),
      ),
      body: Center(
        child: Text(
          'The Recipes For The Category!',
        ),
      ),
    );
  }
}
