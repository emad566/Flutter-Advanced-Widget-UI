import 'package:flutter/material.dart';

class UiPercentIndicator extends StatefulWidget {
  const UiPercentIndicator({Key? key}) : super(key: key);

  @override
  State<UiPercentIndicator> createState() => _UiPercentIndicatorState();
}

class _UiPercentIndicatorState extends State<UiPercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiPercentIndicator'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
