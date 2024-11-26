import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  @override
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  String _result = '';

  void _calculateSI() {
    double principal = double.tryParse(_principalController.text) ?? 0;
    double rate = double.tryParse(_rateController.text) ?? 0;
    double time = double.tryParse(_timeController.text) ?? 0;

    double simpleInterest = (principal * rate * time) / 100;

    setState(() {
      _result = 'Simple Interest: $simpleInterest';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _principalController,
              decoration: InputDecoration(labelText: 'Principal Amount'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _rateController,
              decoration: InputDecoration(labelText: 'Rate of Interest'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _timeController,
              decoration: InputDecoration(labelText: 'Time in years'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _calculateSI, child: Text('Calculate')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
