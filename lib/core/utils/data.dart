import 'package:dusk_still_down/features/data/models/celeb.dart';

class LoadingData {

  List<Celeb> getData() {
    return [
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb1.png", amount: "80 songs"),
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb2.png", amount: "80 songs"),
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb3.png", amount: "80 songs"),
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb4.png", amount: "80 songs"),
    ];
  }
}
