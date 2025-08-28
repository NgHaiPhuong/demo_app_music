import 'package:dusk_still_down/core/utils/data.dart';
import 'package:dusk_still_down/features/data/models/new.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late List<News> listNews;

  @override
  void initState() {
    super.initState();
    listNews = LoadingData().getDataNews();
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
                    "News",
                    style: TextStyle(
                      color: AppColors.color_6FABD3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    "assets/image/choose.png",
                    width: 35,
                    height: 22,
                  ),
                ],
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.only(top: 12),
              primary: false,
              itemCount: listNews.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return _buildItems(context, listNews[index]);
              },
            ),
          ],
        ),
      )
    );
  }

  Widget _buildItems(BuildContext context, News item) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      decoration: BoxDecoration(
        color: AppColors.color_DAEFF8,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.65),
            offset: const Offset(-10, -10),
            blurRadius: 20,
            spreadRadius: 10,
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            offset: const Offset(15, 20),
            blurRadius: 15,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.color_CAE6F2,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withValues(alpha: 0.5),
              blurRadius: 15,
              offset: Offset(0, 0),
              spreadRadius: -10,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: const EdgeInsets.all(3.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.url, fit: BoxFit.none,),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                item.description,
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
    );
  }
}
