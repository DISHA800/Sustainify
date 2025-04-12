import 'package:flutter/material.dart';
class CarbonFootprintPage extends StatefulWidget {
  @override
  _CarbonFootprintPageState createState() => _CarbonFootprintPageState();
}

class _CarbonFootprintPageState extends State<CarbonFootprintPage> {
  double _carbonFootprint = 0.0;

  void _increaseFootprint() {
    setState(() {
      _carbonFootprint += 10.0;
    });
  }

  void _decreaseFootprint() {
    setState(() {
      _carbonFootprint -= 10.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Track Carbon Footprint')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Carbon Footprint: ${_carbonFootprint}kg',
              style: TextStyle(fontSize: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increaseFootprint,
                  child: Text('Increase'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decreaseFootprint,
                  child: Text('Decrease'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
