import 'package:flutter/material.dart';
import 'package:tokyo_app/layouts/home_screen.dart';
import 'package:tokyo_app/screens/colors_screen.dart';
import 'package:tokyo_app/screens/family_members.dart';
import 'package:tokyo_app/screens/numbers_screen.dart';
import 'package:tokyo_app/screens/phrases_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        NumbersScreen.routeName: (context) => NumbersScreen(),
        FamilyMembersScreen.routeName:(context)=>FamilyMembersScreen(),
        ColorsScreen.routeName:(context)=>ColorsScreen(),
        PhrasesScreen.routeName:(context)=>PhrasesScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
