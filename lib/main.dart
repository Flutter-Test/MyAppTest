import 'package:flutter/material.dart';
import 'package:my_app_test/views/switch/controllers/switch_controller.dart';
import 'package:my_app_test/views/switch/switch_view.dart';

void main() {
  runApp(const AppWidget(title: 'WAKKE'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: SwitchController.instance,
      builder: (context, child) => MaterialApp(
          theme: SwitchController.instance.isDarkTheme
              ? ThemeData.dark()
              : ThemeData.light(),
          home: const SwitchView()),
    );
  }
}
