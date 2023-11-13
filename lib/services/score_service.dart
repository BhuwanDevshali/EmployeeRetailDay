import 'dart:async';

class ScoreService {
  int _score;
  StreamController<int> _scoreController;

  ScoreService() {
    _score = 0;
    _scoreController = StreamController<int>.broadcast();
  }

  Stream<int> get scoreStream => _scoreController.stream;

  int get currentScore => _score;

  void incrementScore() {
    _score++;
    _scoreController.add(_score);
  }

  void resetScore() {
    _score = 0;
    _scoreController.add(_score);
  }

  void dispose() {
    _scoreController.close();
  }
}