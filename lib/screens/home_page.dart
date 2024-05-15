import 'package:flutter/material.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';

import '../components/category_item.dart';

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
          CategoryItem(
            text: 'Numbers',
            color: const Color(0xFFEFF1F3),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
          ),
          CategoryItem(
            text: 'Family members',
            color: const Color(0xFFDBD3D8),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
          ),
          CategoryItem(
            text: 'Colors',
            color: const Color(0xFFD8B4A0),
            onTap: () {},
          ),
          CategoryItem(
            text: 'Phrases',
            color: const Color(0xFFD77A61),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
