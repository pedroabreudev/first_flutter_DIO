import 'dart:math';

class MakeNumberRandomService {
  static int makeNumberRandom(int numberMax) {
    Random numberRandom = Random();
    return numberRandom.nextInt(numberMax);
  }
}
