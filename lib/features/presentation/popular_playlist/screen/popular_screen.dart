import 'package:flutter/material.dart';

import '../../../../core/utils/color.dart';

class PopularScreenPage extends StatefulWidget {
  const PopularScreenPage({super.key});

  @override
  State<PopularScreenPage> createState() => PopularScreenPageState();
}

class PopularScreenPageState extends State<PopularScreenPage> {
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
                    "Popular Playlist",
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
            Padding(padding: EdgeInsets.symmetric(vertical: 28, horizontal: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.color_DAEFF8,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        // Bóng trắng góc trên trái
                        BoxShadow(
                          color: Colors.white.withValues(alpha: 0.8),
                          offset: const Offset(-10, -10), // Đổ bóng lên trên trái
                          blurRadius: 303,
                          spreadRadius: 10,
                        ),
                        // Bóng đen góc dưới phải
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.25),
                          offset: const Offset(10, 10), // Đổ bóng xuống dưới phải
                          blurRadius: 30,
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
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      margin: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/blinding.png", fit: BoxFit.fitWidth),
                          SizedBox(height: 10),
                          Text("Pop Playlist", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("80 songs", style: TextStyle(color: AppColors.color_text, fontSize: 9, fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.color_DAEFF8,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        // Bóng trắng góc trên trái
                        BoxShadow(
                          color: Colors.white.withValues(alpha: 0.8),
                          offset: const Offset(-10, -10), // Đổ bóng lên trên trái
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                        // Bóng đen góc dưới phải
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.25),
                          offset: const Offset(10, 10), // Đổ bóng xuống dưới phải
                          blurRadius: 20,
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
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      margin: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/dragons.png", fit: BoxFit.fitWidth),
                          SizedBox(height: 10),
                          Text("Pop Playlist", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("80 songs", style: TextStyle(color: AppColors.color_text, fontSize: 9, fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  // Bóng trắng góc trên trái
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.6),
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/celeb/celeb3.png", fit: BoxFit.fitWidth),
                ],
              ),
            ),),
            Padding(padding: EdgeInsets.symmetric(vertical: 28, horizontal: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.color_DAEFF8,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          // Bóng trắng góc trên trái
                          BoxShadow(
                            color: Colors.white.withValues(alpha: 0.8),
                            offset: const Offset(-10, -10), // Đổ bóng lên trên trái
                            blurRadius: 20,
                            spreadRadius: 10,
                          ),
                          // Bóng đen góc dưới phải
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.25),
                            offset: const Offset(10, 10), // Đổ bóng xuống dưới phải
                            blurRadius: 20,
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
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        margin: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/blinding.png", fit: BoxFit.fitWidth),
                            SizedBox(height: 10),
                            Text("Pop Playlist", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("80 songs", style: TextStyle(color: AppColors.color_text, fontSize: 9, fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.color_DAEFF8,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          // Bóng trắng góc trên trái
                          BoxShadow(
                            color: Colors.white.withValues(alpha: 0.8),
                            offset: const Offset(-10, -10), // Đổ bóng lên trên trái
                            blurRadius: 20,
                            spreadRadius: 10,
                          ),
                          // Bóng đen góc dưới phải
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.25),
                            offset: const Offset(10, 10), // Đổ bóng xuống dưới phải
                            blurRadius: 20,
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
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        margin: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/dragons.png", fit: BoxFit.fitWidth),
                            SizedBox(height: 10),
                            Text("Pop Playlist", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("80 songs", style: TextStyle(color: AppColors.color_text, fontSize: 9, fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
