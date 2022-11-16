import 'package:flutter/material.dart';
import 'package:my_app_test/views/home/home_view.dart';

void main() {
  runApp(const AppWidget(title: 'WAKKE'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const HomeView()
    );
  }
}

