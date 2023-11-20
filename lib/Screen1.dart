import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen2');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https://www.auto-data.net/images/f85/BMW-M5-F90-LCI-facelift-2020.jpg'),
            SizedBox(height: 20),
            Text(
              'BMW sport car',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'The automotive industry has produced countless iconic car brands throughout history, each with its own unique legacy and appeal. Among the most renowned brands are Ferrari, known for its high-performance sports cars and racing heritage',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                Object? result = await Navigator.pushNamed(context, '/screen2');
                Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen2') as String);
              },
              icon: Icon(Icons.arrow_forward), // Add an icon to the Button
              label: Text('Mercedes page'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}