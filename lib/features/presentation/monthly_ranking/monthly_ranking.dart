import 'package:flutter/material.dart';

import '../../../core/utils/color.dart';

class MonthlyRankingPage extends StatefulWidget {
  const MonthlyRankingPage({super.key});

  @override
  State<MonthlyRankingPage> createState() => _MonthlyRankingPageState();
}

class _MonthlyRankingPageState extends State<MonthlyRankingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                  Image.asset("assets/image/choose.png", width: 35, height: 22),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [Image.asset("assets/monthly/month1.png")],
                  ),
                ),

                Positioned(
                  top: 210,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [Image.asset("assets/monthly/month2.png")],
                  ),
                ),

                Positioned(
                  top: 420,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [Image.asset("assets/monthly/month3.png")],
                  ),
                ),

                Positioned(
                  top: 630,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [Image.asset("assets/monthly/month4.png")],
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
