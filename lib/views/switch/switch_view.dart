import 'package:flutter/material.dart';
import 'package:my_app_test/views/switch/controllers/switch_controller.dart';

class SwitchView extends StatefulWidget {
  const SwitchView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SwitchViewState();
  }
}

class _SwitchViewState extends State<SwitchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch View')),
      body: Center(
        child: Switch(
          value: SwitchController.instance.isDarkTheme,
          activeColor: Colors.black,
          inactiveThumbColor: Colors.white,
          onChanged: (value) {
            setState(() {
              SwitchController.instance.changeTheme(value);
            });
          }
        )
      ),
    );
  }
}
