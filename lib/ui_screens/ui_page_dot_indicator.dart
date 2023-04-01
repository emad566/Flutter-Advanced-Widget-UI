import 'package:flutter/material.dart';

class UiPageDotIndicator extends StatefulWidget {
  const UiPageDotIndicator({Key? key}) : super(key: key);

  @override
  State<UiPageDotIndicator> createState() => _UiPageDotIndicatorState();
}

class _UiPageDotIndicatorState extends State<UiPageDotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiPageDotIndicator'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
