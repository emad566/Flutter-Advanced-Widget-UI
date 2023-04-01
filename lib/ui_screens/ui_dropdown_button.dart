import 'package:flutter/material.dart';

class UiDropDownButton extends StatefulWidget {
  const UiDropDownButton({Key? key}) : super(key: key);

  @override
  State<UiDropDownButton> createState() => _UiDropDownButtonState();
}

class _UiDropDownButtonState extends State<UiDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiDropDownButton'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
