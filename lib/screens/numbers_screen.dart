import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokyo_app/screens/widgets/appBar.dart';
import 'package:tokyo_app/screens/widgets/number_item.dart';

import '../models/numbers_model.dart';

class NumbersScreen extends StatelessWidget {
  static const routeName = "NumbersScreen";

  List<NumbersModel> numbersItem = [
    NumbersModel(
        picture: "assets/images/numbers/number_one.png",
        numberTokyo: "itchi",
        numberEnglish: "one",
        numberAudioName: "one.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_two.png",
        numberTokyo: "Ni",
        numberEnglish: "two",
        numberAudioName: "two.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_three.png",
        numberTokyo: "San",
        numberEnglish: "three",
        numberAudioName: "three.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_four.png",
        numberTokyo: "Shi",
        numberEnglish: "four",
        numberAudioName: "four.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_five.png",
        numberTokyo: "Go",
        numberEnglish: "five",
        numberAudioName: "five.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_six.png",
        numberTokyo: "Roku",
        numberEnglish: "six",
        numberAudioName: "six.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_seven.png",
        numberTokyo: "sebun",
        numberEnglish: "seven",
        numberAudioName: "seven.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_eight.png",
        numberTokyo: "hachi",
        numberEnglish: "eight",
        numberAudioName: "eight.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_nine.png",
        numberTokyo: "Kyū",
        numberEnglish: "nine",
        numberAudioName: "nine.wav"),
    NumbersModel(
        picture: "assets/images/numbers/number_ten.png",
        numberTokyo: "Jū",
        numberEnglish: "ten",
        numberAudioName: "ten.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Numbers"),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return NumberItem(numbersItem[index]);
        },
        itemCount: numbersItem.length,
      ),
    );
  }
}
