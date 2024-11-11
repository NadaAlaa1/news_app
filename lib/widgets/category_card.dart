import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
            height: 100,
            width: 185,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.imageAssetUrl),
                fit: BoxFit.fill,
              ),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                category.categoryName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ),
    );
  }
}