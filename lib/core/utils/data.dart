import 'package:dusk_still_down/features/data/models/celeb.dart';

import '../../features/data/models/new.dart';

class LoadingData {

  List<Celeb> getDataCeleb() {
    return [
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb1.png", amount: "80 songs"),
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb2.png", amount: "80 songs"),
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb3.png", amount: "80 songs"),
      Celeb(name: "Popular Playlist", url: "assets/celeb/celeb4.png", amount: "80 songs"),
    ];
  }

  List<News> getDataNews() {
    return [
      News(name: "1", url: "assets/image/justin.png", description: "Justin Bieber announces new concert dates for his....."),
      News(name: "2", url: "assets/image/drake.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "3", url: "assets/image/justin.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "4", url: "assets/image/drake.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "5", url: "assets/image/justin.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "6", url: "assets/image/drake.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "7", url: "assets/image/justin.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "8", url: "assets/image/drake.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "9", url: "assets/image/justin.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
      News(name: "10", url: "assets/image/drake.png", description: "Watch Justin Bieber step in for Drake in DJ Khaled’s....."),
    ];
  }

  List<String> images = [
    "assets/image/imagine.jpg",
    "assets/image/happier.jpg",
    "assets/image/havana.jpg",
  ];
}
