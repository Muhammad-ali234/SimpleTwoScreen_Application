import 'package:flutter/material.dart';
class MySecondScreen extends StatelessWidget {
  final String month;
  const MySecondScreen(this.month, {super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Details Page';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Text('You selected $month'),
    );
  }
}
