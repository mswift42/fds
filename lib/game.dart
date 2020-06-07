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

class CountDownGame {
  int score;

  CountDownGame(this.score);

  int scoreThrow(int points) {
    var result = score - points;
    if (result < 0 || result == 1) {
      return score;
    }
    return result;
  }
}
