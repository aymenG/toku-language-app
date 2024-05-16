import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Musume',
        enName: 'daughter',
        sound: 'sounds/colors/brown.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF223843),
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF223843),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            itemObj: colors[index],
            color: const Color(0xFFD8B4A0),
          );
        },
      ),
    );
  }
}
