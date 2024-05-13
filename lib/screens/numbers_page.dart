import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDE4),
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF223843),
      ),
      body: Container(
        height: 100,
        color: Colors.amber,
        child: Row(
          children: [
            Container(
                color: const Color(0xFFEFF1F3),
                child: Image.asset('assets/images/numbers/number_one.png')),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ichi',
                    style: TextStyle(color: Color(0xFF223843), fontSize: 16),
                  ),
                  Text(
                    'one',
                    style: TextStyle(color: Color(0xFF223843), fontSize: 16),
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.play_arrow,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
