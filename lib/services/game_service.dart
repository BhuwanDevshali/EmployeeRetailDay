import 'dart:async';

import 'package:flutter/material.dart';
import '../models/bird_model.dart';
import '../models/pipe_model.dart';

class GameService {
  BirdModel birdModel;
  List<PipeModel> pipeModels;
  bool isGameStopped;
  int score;

  GameService() {
    resetGame();
  }

  void startGame() {
    isGameStopped = false;
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (isGameStopped) {
        timer.cancel();
      } else {
        birdModel.updatePosition();
        pipeModels.forEach((pipe) => pipe.updatePosition());
        checkCollision();
        updateScore();
      }
    });
  }

  void stopGame() {
    isGameStopped = true;
  }

  void resetGame() {
    birdModel = BirdModel();
    pipeModels = List.generate(3, (index) => PipeModel(index));
    isGameStopped = true;
    score = 0;
  }

  void checkCollision() {
    if (birdModel.isCollidingWith(pipeModels)) {
      stopGame();
    }
  }

  void updateScore() {
    pipeModels.forEach((pipe) {
      if (pipe.isPassedBy(birdModel)) {
        score++;
      }
    });
  }
}