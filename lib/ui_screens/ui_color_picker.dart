import 'package:flutter/material.dart';

class UiColorPicker extends StatefulWidget {
  const UiColorPicker({Key? key}) : super(key: key);

  @override
  State<UiColorPicker> createState() => _UiColorPickerState();
}

class _UiColorPickerState extends State<UiColorPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiColorPicker'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
