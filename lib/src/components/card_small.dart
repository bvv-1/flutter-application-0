import 'package:flutter/material.dart';

class card_small extends StatelessWidget {
  final String imageUrl;
  final String text;

  const card_small({Key? key, required this.imageUrl, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.network(
            imageUrl,
            width: 70, // 画像の幅
            height: 70, // 画像の高さ
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8), // テキストと画像の間隔
        Text(text),
      ],
    );
  }
}
