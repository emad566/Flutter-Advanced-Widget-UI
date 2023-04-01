import 'package:flutter/material.dart';

class UiCheckbox extends StatefulWidget {
  const UiCheckbox({Key? key}) : super(key: key);

  @override
  State<UiCheckbox> createState() => _UiCheckboxState();
}

class _UiCheckboxState extends State<UiCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiCheckbox'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
