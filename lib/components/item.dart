import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemObj, required this.color});
  final ItemModel itemObj;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
      height: 100,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color: const Color(0xFFEFF1F3),
              ),
              child: Image.asset(itemObj.image!)),
          Expanded(
              child: ItemInfo(
            itemObj: itemObj,
          ))
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemObj});
  final ItemModel itemObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemObj.jpName,
                style: const TextStyle(color: Color(0xFF223843), fontSize: 18),
              ),
              Text(
                itemObj.enName,
                style: const TextStyle(color: Color(0xFF223843), fontSize: 18),
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
              onPressed: () {
                itemObj.playsound();
              },
              icon: const Icon(
                Icons.play_circle,
                size: 30,
                color: Color(0xFF223843),
              )),
        )
      ],
    );
  }
}
