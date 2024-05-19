import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Kimasu ka',
      enName: 'are you coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Kōdoku suru koto o \n wasurenaide kudasai',
      enName: 'dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Hai, kimasu',
      enName: 'yes im coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no?',
      enName: 'where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu\n ga daisukidesu',
      enName: 'i love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
        jpName: 'Anata no namae wa nanidesu ka?',
        enName: 'what is your name?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF223843),
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF223843),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(255, 243, 189, 174),
            ),
            height: 100,
            child: ItemInfo(
              itemObj: phrases[index],
            ),
          );
        },
      ),
    );
  }
}
