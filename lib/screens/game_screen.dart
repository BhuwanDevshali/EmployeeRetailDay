import 'package:flutter/material.dart';
import 'package:flappy_bird_clone/models/bird_model.dart';
import 'package:flappy_bird_clone/models/pipe_model.dart';
import 'package:flappy_bird_clone/widgets/bird_widget.dart';
import 'package:flappy_bird_clone/widgets/pipe_widget.dart';
import 'package:flappy_bird_clone/services/game_service.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  BirdModel birdModel;
  List<PipeModel> pipeModels;
  GameService gameService;

  @override
  void initState() {
    super.initState();
    birdModel = BirdModel();
    pipeModels = <PipeModel>[];
    gameService = GameService(birdModel: birdModel, pipeModels: pipeModels);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BirdWidget(birdModel: birdModel),
          ...pipeModels.map((pipeModel) => PipeWidget(pipeModel: pipeModel)),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => gameService.startGame(),
            onVerticalDragUpdate: (details) => gameService.jump(),
          ),
        ],
      ),
    );
  }
}