import 'package:flutter/material.dart';
import 'package:tokyo_app/screens/widgets/appBar.dart';
import 'package:tokyo_app/screens/widgets/color_item.dart';

import '../models/color_model.dart';

class ColorsScreen extends StatelessWidget {

  static const String routeName = "ColorsScreen";

  List<ColorsModel>colors = [
    ColorsModel(
        picture: "assets/images/colors/color_black.png",
        colorTokyo: "burakku",
        colorEnglish: "black",
        colorAudioName: "black.wav"),
    ColorsModel(
        picture: "assets/images/colors/color_brown.png",
        colorTokyo: "chairo",
        colorEnglish: "brown",
        colorAudioName: "brown.wav"),
    ColorsModel(
        picture: "assets/images/colors/color_dusty_yellow.png",
        colorTokyo: "hokori ppoi kiiro",
        colorEnglish: "dusty yellow",
        colorAudioName: "dusty yellow.wav"),
    ColorsModel(
        picture: "assets/images/colors/color_gray.png",
        colorTokyo: "Gurē",
        colorEnglish: "gray",
        colorAudioName: "gray.wav"),
    ColorsModel(
        picture: "assets/images/colors/color_green.png",
        colorTokyo: "Midori",
        colorEnglish: "green",
        colorAudioName: "green.wav"),
    ColorsModel(
        picture: "assets/images/colors/color_red.png",
        colorTokyo: "Aka",
        colorEnglish: "red",
        colorAudioName: "red.wav"),
    ColorsModel(
        picture: "assets/images/colors/color_white.png",
        colorTokyo: "Shiro",
        colorEnglish: "white",
        colorAudioName: "white.wav"),
    ColorsModel(
        picture: "assets/images/colors/yellow.png",
        colorTokyo: "itchi",
        colorEnglish: "yellow",
        colorAudioName: "yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Colors"),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ColorItem(colors[index]);
        },
        itemCount: colors.length,
      ),
    );
  }
}
