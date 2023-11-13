import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flappy_clone/models/bird_model.dart';

class BirdWidget extends StatelessWidget {
  final BirdModel bird;

  BirdWidget({required this.bird});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 0),
      alignment: Alignment(bird.position, -1),
      child: Image.asset(
        'assets/images/bird.png',
        width: 50,
        height: 50,
      ),
    );
  }
}