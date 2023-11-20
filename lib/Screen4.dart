import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4'),
        backgroundColor: Colors.orange, // Changed theme color to orange
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen5');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: SingleChildScrollView( // Added SingleChildScrollView for better scrolling experience
        child: Padding( // Added padding for better UI
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://imgd.aeplcdn.com/664x374/cw/ec/39232/Porsche-New-911-Exterior-153677.jpg?wm=1&q=80'),
              SizedBox(height: 20),
              Text(
                'Porsche',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'The automotive industry has produced countless iconic car brands throughout history, each with its own unique legacy and appeal.',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () async {
                  Object? result = await Navigator.pushNamed(context, '/screen5');
                  Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen5') as String);
                },
                icon: Icon(Icons.navigate_next), // Changed icon to home
                label: Text('Audi page'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Changed button color to orange
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}