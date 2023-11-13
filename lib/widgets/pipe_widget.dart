import 'package:flutter/material.dart';
import 'package:flappy_clone/models/pipe_model.dart';

class PipeWidget extends StatelessWidget {
  final PipeModel pipe;

  PipeWidget({required this.pipe});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pipe.x,
      top: pipe.isTop ? 0 : pipe.y,
      child: Container(
        width: PipeModel.width,
        height: pipe.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pipe.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}