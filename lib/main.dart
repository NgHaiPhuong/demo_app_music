import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/utils/color.dart';
import 'features/presentation/home/screen/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.primary, // ✅ Set màu status bar
      statusBarIconBrightness: Brightness.light, // Icon trắng
      systemNavigationBarColor: AppColors.primary, // ✅ Thanh điều hướng dưới
      systemNavigationBarIconBrightness: Brightness.light, // Icon trắng
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primary, // ✅ Màu nền toàn app
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary, // ✅ Màu AppBar
          elevation: 0,
          foregroundColor: Colors.white, // Chữ, icon trắng
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.primary,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
