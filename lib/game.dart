import 'package:flutter/cupertino.dart';

class Player {
  String name;

  Player(this.name);
}

class Scorecard {
  List<Player> players;
}

class Game {
  String title;
}

class CountDownGame with ChangeNotifier {
  int score;

  CountDownGame(this.score);

  void scoreThrow(int points) {
    var result = score - points;
    if (result < 0 || result == 1) {
      notifyListeners();
    } else {
      score = result;
      notifyListeners();
    }
  }
}
