import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amber,
      ),
      margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
      height: 100,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFEFF1F3),
              ),
              child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style:
                      const TextStyle(color: Color(0xFF223843), fontSize: 16),
                ),
                Text(
                  number.enName,
                  style:
                      const TextStyle(color: Color(0xFF223843), fontSize: 16),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(number.sound));
                },
                icon: const Icon(
                  Icons.play_circle,
                  size: 30,
                  color: Color(0xFF223843),
                )),
          )
        ],
      ),
    );
  }
}
