import 'package:flutter/material.dart';

class UiTextOption extends StatefulWidget {
  const UiTextOption({Key? key}) : super(key: key);

  @override
  State<UiTextOption> createState() => _UiTextOptionState();
}

class _UiTextOptionState extends State<UiTextOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiTextOption'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
