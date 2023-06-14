import 'package:flutter/material.dart';
import 'package:tokyo_app/screens/widgets/appBar.dart';
import 'package:tokyo_app/screens/widgets/phrases_item.dart';

import '../models/phrases_model.dart';

class PhrasesScreen extends StatelessWidget {
  static const String routeName = "Phrases";

  List<PhrasesModel> phrases = [
    PhrasesModel(
        phraseTokyo: "Kōdoku suru koto o wasurenaide kudasai",
        phraseEnglish: "dont forget to subscribe",
        phraseAudioName: "dont_forget_to_subscribe.wav"),
    PhrasesModel(
        phraseTokyo: "Watashi wa puroguramingu ga daisukidesu",
        phraseEnglish: "i love programming",
        phraseAudioName: "i_love_programming.wav"),
    PhrasesModel(
        phraseTokyo: "Doko ni iku no?",
        phraseEnglish: "where are you going ?",
        phraseAudioName: "where_are_you_going.wav"),
    PhrasesModel(
        phraseTokyo: "Namae wa nandesu ka?",
        phraseEnglish: "what is your name ?",
        phraseAudioName: "what_is_your_name.wav"),
    PhrasesModel(
        phraseTokyo: "Watashi wa anime ga daisukidesu",
        phraseEnglish: "i love anime",
        phraseAudioName: "dont_forget_to_subscribe.wav"),
    PhrasesModel(
        phraseTokyo: "Go kibun wa ikagadesu ka?",
        phraseEnglish: "how are you feeling ?",
        phraseAudioName: "how_are_you_feeling.wav"),
    PhrasesModel(
        phraseTokyo: "Kimasu ka?",
        phraseEnglish: "are you coming ?",
        phraseAudioName: "are_you_coming.wav"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Numbers"),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhrasesItem(phrases[index]);
        },
        itemCount:  phrases.length,
      ),
    );
  }
}
