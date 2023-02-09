import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';

class MyHomeScreen extends StatelessWidget {
  final List<String> items = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'Auguest',
    'September',
    'Octuber',
    'November',
    'December'
  ];

  MyHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const title = 'MyAwesome App';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MySecondScreen(items[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
