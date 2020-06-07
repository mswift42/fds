import 'package:ds/game.dart';
import 'package:test/test.dart';

void main() {
  test('scoreThrow should count down the score', () {
    var cm = CountDownGame(301);
    var sc = cm.scoreThrow(100);
    expect(sc, 201);
    expect(cm.scoreThrow(100), 101);
    expect(cm.scoreThrow(100), 101);
    expect(cm.scoreThrow(300), 101);
    expect(cm.scoreThrow(101), 0);

    cm = CountDownGame(100);
    sc = cm.scoreThrow(80);
    expect(cm.score, 20);
    sc = cm.scoreThrow(80);
    expect(cm.score, 20);
    sc = cm.scoreThrow(19);
    expect(cm.score, 20);
    sc = cm.scoreThrow(20);
    expect(cm.score, 0);
  });
}
