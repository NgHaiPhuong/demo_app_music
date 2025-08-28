import 'package:dusk_still_down/core/utils/data.dart';
import 'package:dusk_still_down/features/data/models/celeb.dart';
import 'package:dusk_still_down/features/presentation/popular_playlist/screen/popular_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color.dart';

class MonthlyRankingPage extends StatefulWidget {
  const MonthlyRankingPage({super.key});

  @override
  State<MonthlyRankingPage> createState() => _MonthlyRankingPageState();
}

class _MonthlyRankingPageState extends State<MonthlyRankingPage> {
  late List<Celeb> celebList = [];

  @override
  void initState() {
    super.initState();
    celebList = LoadingData().getDataCeleb();
  }

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
            ListView.builder(
              padding: EdgeInsets.only(top: 22),
              primary: false,
              itemCount: celebList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            // Bóng trắng góc trên trái
                            BoxShadow(
                              color: Colors.white.withValues(alpha: 0.8),
                              offset: const Offset(-10, -10), // Đổ bóng lên trên trái
                              blurRadius: 15,
                              spreadRadius: 10,
                            ),
                            // Bóng đen góc dưới phải
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.25),
                              offset: const Offset(10, 10), // Đổ bóng xuống dưới phải
                              blurRadius: 15,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Image.asset(celebList[index].url, width: double.infinity, fit: BoxFit.fitWidth,),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(52, 155, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            celebList[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            celebList[index].amount,
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
