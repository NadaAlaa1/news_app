import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      imageAssetUrl: 'assets/sports.png',
      categoryName: 'Sports',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.png',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/business.png',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/health.png',
      categoryName: 'Health',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/entertainment.png',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/general.png',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
