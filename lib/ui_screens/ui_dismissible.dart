import 'package:flutter/material.dart';

class UiDismissible extends StatefulWidget {
  const UiDismissible({Key? key}) : super(key: key);

  @override
  State<UiDismissible> createState() => _UiDismissibleState();
}

class _UiDismissibleState extends State<UiDismissible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiDismissible'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
