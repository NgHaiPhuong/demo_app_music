import 'dart:math';

import 'package:dusk_still_down/core/utils/color.dart';
import 'package:dusk_still_down/features/presentation/see_all/screen/see_all_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _angle = 0;

  void _startRotation() {
    setState(() {
      _angle += 2 * pi; // Rotate by 360 degrees (2 * pi radians)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(46, 60, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DUSK TILL DOWN",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: [
                            AppColors.color_002369,
                            AppColors.color_001236,
                            Colors.black,
                          ],
                        ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "ZAYN  ft. Sia",
                    style: TextStyle(
                      fontSize: 18,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: [
                            AppColors.color_002369,
                            AppColors.color_001236,
                            Colors.black,
                          ],
                        ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Kazuya’s Air Pods Pro",
                    style: TextStyle(fontSize: 18, color: AppColors.color_text),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset('assets/image/side_bar.png'),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(62, 178, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/back.png'),
                        SizedBox(height: 50),
                        Image.asset('assets/image/next.png'),
                        SizedBox(height: 60),
                        Image.asset('assets/image/stop.png'),
                        SizedBox(height: 60),
                        Image.asset('assets/image/pre.png'),
                        SizedBox(height: 50),
                        Image.asset('assets/image/heart.png'),
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/image/circle.png'),
                      Transform.translate(
                        offset: const Offset(170, 0),
                        child: TweenAnimationBuilder<double>(
                          key: ValueKey(_angle),
                          tween: Tween(begin: _angle, end: _angle + 2 * pi),
                          duration: const Duration(seconds: 15),
                          onEnd: _startRotation,
                          builder: (context, angle, child) {
                            return Transform.rotate(angle: angle, child: child);
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: 345,
                                height: 345,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(190),
                                ),
                              ),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(190),
                                ),
                                child: Image.asset(
                                  'assets/image/celeb.png',
                                  width: 340,
                                  height: 340,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "But you'll",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.color_0023692,
                          ),
                        ),
                        Text(
                          " never be alone",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.color_6BA6CF,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 638),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/image/button.png'),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAllPage(),
                              ),
                            );
                          },
                          child: Text(
                            "See All Lyrics",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.color_155A9B,
                            ),
                          ),
                        ),
                      ],
                    ),
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
