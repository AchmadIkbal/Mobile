import 'base_network.dart';

class GamesSource {
  static GamesSource instance = GamesSource();
  Future<List<dynamic>> loadGames() {
    return BaseNetwork.get('games');
  }
}

class ShooterSource {
  static ShooterSource instance = ShooterSource();
  Future<List<dynamic>> loadShooter() {
    return BaseNetwork.get('games?category=shooter');
  }
}