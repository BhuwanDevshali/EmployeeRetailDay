import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flappy Bird Clone'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/bird.png'),
            SizedBox(height: 20),
            Text(
              'Welcome to Flappy Bird Clone!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Text(
                'Start Game',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}