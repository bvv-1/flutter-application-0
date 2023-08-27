import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ご注文内容'),
      ),
      body: const Center(
        child: Text('ご注文画面', style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
