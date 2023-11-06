import 'package:flutter/material.dart';

class ItemPhoto extends StatelessWidget {
  final String image;

  const ItemPhoto({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(image, fit: BoxFit.cover,),
    );
  }
}
