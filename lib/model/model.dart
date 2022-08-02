import 'package:flutter/material.dart';

class RecipeItem {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> steps;
  final List<String> ingredients;

  RecipeItem(
      {required this.title,
      required this.id,
      required this.imageUrl,
      required this.duration,
      required this.steps,
      required this.ingredients});
}
