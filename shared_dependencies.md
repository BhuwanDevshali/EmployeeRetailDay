1. Flutter SDK: All the files will be using Flutter SDK for creating the UI and logic of the app.

2. Material Design: "lib/main.dart", "lib/app.dart", "lib/screens/home_screen.dart", "lib/screens/game_screen.dart", "lib/screens/score_screen.dart" will be using Material Design components for UI.

3. Bird Model: "lib/screens/game_screen.dart", "lib/widgets/bird_widget.dart", "lib/services/game_service.dart" will be using "lib/models/bird_model.dart".

4. Pipe Model: "lib/screens/game_screen.dart", "lib/widgets/pipe_widget.dart", "lib/services/game_service.dart" will be using "lib/models/pipe_model.dart".

5. Game Service: "lib/screens/game_screen.dart" will be using "lib/services/game_service.dart" for game logic.

6. Score Service: "lib/screens/score_screen.dart" will be using "lib/services/score_service.dart" for managing scores.

7. Bird Widget: "lib/screens/game_screen.dart" will be using "lib/widgets/bird_widget.dart" for displaying the bird.

8. Pipe Widget: "lib/screens/game_screen.dart" will be using "lib/widgets/pipe_widget.dart" for displaying the pipes.

9. Score Widget: "lib/screens/score_screen.dart" will be using "lib/widgets/score_widget.dart" for displaying the score.

10. Image Assets: "lib/widgets/bird_widget.dart", "lib/widgets/pipe_widget.dart", "lib/screens/home_screen.dart", "lib/screens/game_screen.dart", "lib/screens/score_screen.dart" will be using "assets/images/bird.png", "assets/images/pipe.png", "assets/images/background.png".

11. Pubspec.yaml: All the dart files and assets will be declared in "pubspec.yaml" for Flutter to recognize them.

12. Function Names: Functions like "startGame", "stopGame", "updateScore", "resetGame" will be shared across multiple files like "lib/screens/game_screen.dart", "lib/services/game_service.dart", "lib/services/score_service.dart".

13. Dart Core: All the dart files will be using Dart core for basic programming constructs like variables, data types, control flow, etc.