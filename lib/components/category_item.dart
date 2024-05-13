import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 64,
        width: double.infinity,
        color: color,
        child: Text(
          '$text',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
