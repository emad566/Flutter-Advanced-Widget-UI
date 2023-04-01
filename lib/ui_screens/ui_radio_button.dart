import 'package:flutter/material.dart';

class UiRadioButton extends StatefulWidget {
  const UiRadioButton({Key? key}) : super(key: key);

  @override
  State<UiRadioButton> createState() => _UiRadioButtonState();
}

class _UiRadioButtonState extends State<UiRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiRadioButton'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
