import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';
import 'package:surf_flutter_courses_template/ui/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.colorLigthBly,
        body: HomePage(),
      ),
    );
  }
}
