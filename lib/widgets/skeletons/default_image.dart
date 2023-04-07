import 'package:flutter/material.dart';

class DefaultImage extends StatelessWidget {
  const DefaultImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/placeholder_image.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
