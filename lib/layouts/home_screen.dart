import 'package:flutter/material.dart';
import 'package:tokyo_app/screens/family_members.dart';
import 'package:tokyo_app/screens/menu_screen.dart';
import 'package:tokyo_app/screens/numbers_screen.dart';
import 'package:tokyo_app/screens/widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF3D7),
      appBar: AppBarWidget(title: "Tokyo App"),
      body: MenuWidget(),
    );
  }
}
