import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen4');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(  'https://store-images.s-microsoft.com/image/apps.49961.14504102599952726.c24b3d98-8889-4d38-a87a-89b6bb9383bb.9d2033a5-a493-4f99-a336-5ee56a41f906?mode=scale&q=90&h=720&w=1280&format=jpg'),
            SizedBox(height: 20),
            Text(
              'Lamborghini ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'The automotive industry has produced countless iconic car brands throughout history, each with its own unique legacy and appeal.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                Object? result = await Navigator.pushNamed(context, '/screen4');
                Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen4') as String);
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Porsche page'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
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