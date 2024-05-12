import 'package:flutter/material.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDE4),
      appBar: AppBar(
        title: const Text(
          'Language App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF223843),
      ),
      body: Column(
        children: [
          CategoryItem('Numbers', const Color(0xFFEFF1F3)),
          CategoryItem('Family members', const Color(0xFFDBD3D8)),
          CategoryItem('Colors', const Color(0xFFD8B4A0)),
          CategoryItem('Phrases', const Color(0xFFD77A61)),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  String? text;
  Color? color;
  CategoryItem(this.text, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      height: 64,
      width: double.infinity,
      color: color,
      child: Text(
        '$text',
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
