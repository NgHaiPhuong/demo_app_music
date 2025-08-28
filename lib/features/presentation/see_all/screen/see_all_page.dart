import 'dart:ui';

import 'package:dusk_still_down/core/utils/color.dart';
import 'package:dusk_still_down/features/presentation/monthly_ranking/monthly_ranking.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../new/screen/new_page.dart';
import '../../popular_playlist/screen/popular_screen.dart';

class SeeAllPage extends StatefulWidget {
  const SeeAllPage({super.key});

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        dragStartBehavior: DragStartBehavior.start,
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(51, 65, 50, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monthly Ranking",
                    style: TextStyle(
                      color: AppColors.color_6FABD3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MonthlyRankingPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/image/choose.png",
                      width: 35,
                      height: 22,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 25),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/image/elip.png"),
                      Image.asset("assets/image/imagine.png"),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/image/elip.png"),
                      Image.asset("assets/image/happier.png"),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/image/elip.png"),
                      Image.asset("assets/image/havana.png"),
                    ],
                  ),
                ),
                SizedBox(width: 25),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(51, 0, 50, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Playlist",
                    style: TextStyle(
                      color: AppColors.color_6FABD3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PopularScreenPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/image/choose.png",
                      width: 35,
                      height: 22,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 25),
                Expanded(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset("assets/image/rect.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Column(
                          children: [
                            Image.asset("assets/image/blinding.png"),
                            SizedBox(height: 8),
                            Text(
                              "Pop playlist",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..shader =
                                      const LinearGradient(
                                        colors: [
                                          AppColors.color_002369,
                                          AppColors.color_001236,
                                          Colors.black,
                                        ],
                                      ).createShader(
                                        const Rect.fromLTWH(0, 0, 200, 70),
                                      ),
                              ),
                            ),
                            Text(
                              "80 Songs",
                              style: TextStyle(
                                color: AppColors.color_70ACD3,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset("assets/image/rect.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Column(
                          children: [
                            Image.asset("assets/image/dragons.png"),
                            SizedBox(height: 8),
                            Text(
                              "Pop playlist",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..shader =
                                      const LinearGradient(
                                        colors: [
                                          AppColors.color_002369,
                                          AppColors.color_001236,
                                          Colors.black,
                                        ],
                                      ).createShader(
                                        const Rect.fromLTWH(0, 0, 200, 70),
                                      ),
                              ),
                            ),
                            Text(
                              "80 Songs",
                              style: TextStyle(
                                color: AppColors.color_70ACD3,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 18),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: -15,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset("assets/image/rect2.png"),
                      Positioned(
                        left: 55,
                        right: 55,
                        top: 75,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/image/justin.png"),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Justin Bieber announces new concert dates for his.....",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColors.color_2368A4,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 75,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset("assets/image/rect2.png"),
                      Positioned(
                        left: 55,
                        right: 55,
                        top: 75,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/image/drake.png"),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Watch Justin Bieber step in for Drake in DJ Khaled’s.....",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColors.color_2368A4,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 167,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: Opacity(
                      opacity: 0.5,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Image.asset("assets/image/rect2.png"),
                          Positioned(
                            left: 55,
                            right: 55,
                            top: 75,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/image/drake.png"),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    "Watch Justin Bieber step in for Drake in DJ Khaled’s.....",
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: AppColors.color_2368A4,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(51, 0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "News",
                        style: TextStyle(
                          color: AppColors.color_6FABD3,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewsPage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/image/choose.png",
                          width: 35,
                          height: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
