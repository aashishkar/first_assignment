import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colomn'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              // Action for the first button
            },
            child: const Text('Button 1'),
          ),
          ElevatedButton(
            onPressed: () {
              // Action for the second button
            },
            child: const Text('Button 2'),
          ),
          ElevatedButton(
            onPressed: () {
              // Action for the third button
            },
            child: const Text('Button 3'),
          ),
        ]),
      ),
    );
  }
}
