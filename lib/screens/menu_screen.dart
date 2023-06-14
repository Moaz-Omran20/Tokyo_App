import 'package:flutter/material.dart';
import 'package:tokyo_app/screens/colors_screen.dart';
import 'package:tokyo_app/screens/family_members.dart';
import 'package:tokyo_app/screens/widgets/category_item.dart';

import 'numbers_screen.dart';

class MenuWidget extends StatefulWidget {
  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CategoryItem(
            categoryName: "Numbers",
            categoryColor: Color(0xFFF8942F),
            onCategoryClick: onCAtegoryClick,
            index: 0),
        CategoryItem(
            categoryName: "Family Members",
            categoryColor: Color(0xFF527F30),
            onCategoryClick: onCAtegoryClick,
            index: 1),
        CategoryItem(
            categoryName: "Colors",
            categoryColor: Color(0xFF7C3FA0),
            onCategoryClick: onCAtegoryClick,
            index: 2),
        CategoryItem(
            categoryName: "Phrases",
            categoryColor: Color(0xFF46A4C9),
            onCategoryClick: onCAtegoryClick,
            index: 3),
      ],
    );
  }

  void onCAtegoryClick(int index) {
    if (index == 0) {
      Navigator.pushNamed(context, NumbersScreen.routeName);
    }
    else if (index == 1) {
      Navigator.pushNamed(context, FamilyMembersScreen.routeName);
    }
    else if(index==2)
      {
        Navigator.pushNamed(context, ColorsScreen.routeName);
      }
    else if(index==3)
    {

    }
  }
}
