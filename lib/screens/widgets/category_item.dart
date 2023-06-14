import 'package:flutter/material.dart';
import 'package:tokyo_app/models/category_model.dart';

import '../numbers_screen.dart';

class CategoryItem extends StatelessWidget {

  String categoryName;
  int index;
  Color categoryColor;
  Function onCategoryClick;


  CategoryItem(
      {required this.categoryName,
     required this.index,
     required this.categoryColor,
     required this.onCategoryClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       onCategoryClick(index);
      },
      child: Container(
        alignment: Alignment.centerLeft,
        color: categoryColor,
        height: MediaQuery.of(context).size.height * .09,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            categoryName,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
