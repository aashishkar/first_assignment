import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  @override
  _AreaOfCircleScreenState createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController _radiusController = TextEditingController();
  String _result = '';

  void _calculateArea() {
    double radius = double.tryParse(_radiusController.text) ?? 0;
    double area = 3.14159 * radius * radius;

    setState(() {
      _result = 'Area: $area';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _radiusController,
              decoration: InputDecoration(labelText: 'Enter radius'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _calculateArea, child: Text('Calculate')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
