import 'package:flutter/material.dart';

class UiSwitch extends StatefulWidget {
  const UiSwitch({Key? key}) : super(key: key);

  @override
  State<UiSwitch> createState() => _UiSwitchState();
}

class _UiSwitchState extends State<UiSwitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiSwitch'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
