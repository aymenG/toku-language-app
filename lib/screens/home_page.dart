import 'package:flutter/material.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';

import '../components/category_item.dart';
import 'colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF223843),
      appBar: AppBar(
        title: const Text(
          'Language App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF223843),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 150),
        alignment: Alignment.center,
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          crossAxisCount: 2,
          children: [
            CategoryItem(
              text: 'Numbers',
              color: const Color(0xFFEFF1F3),
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
            ),
            CategoryItem(
              text: 'Family members',
              color: const Color(0xFFDBD3D8),
              icon: Icons.family_restroom,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
            ),
            CategoryItem(
              text: 'Colors',
              color: const Color(0xFFD8B4A0),
              icon: Icons.color_lens,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }));
              },
            ),
            CategoryItem(
              icon: Icons.abc,
              text: 'Phrases',
              color: const Color(0xFFD77A61),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
