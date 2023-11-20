import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        backgroundColor: Colors.purple, // Changed theme color to blue
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home), // Changed icon to arrow_back
            onPressed: () {
              Navigator.pop(context); // Go back to previous screen
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward), // Changed icon to arrow_forward
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen3');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https://media.ed.edmunds-media.com/mercedes-benz/maybach/2022/oem/2022_mercedes-benz_maybach_sedan_s-680-4matic_fq_oem_2_1280.jpg'),
            SizedBox(height: 20),
            Text(
              'Mercedes Benz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'The automotive industry has produced countless iconic car brands throughout history, each with its own unique legacy and appeal. ',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                Object? result = await Navigator.pushNamed(context, '/screen3');
                Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen3') as String);
              },
              icon: Icon(Icons.arrow_forward), // Add an icon to the Button
              label: Text('Lamborghini page'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Changed button color to blue
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