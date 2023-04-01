import 'package:flutter/material.dart';

class UiSnackBar extends StatefulWidget {
  const UiSnackBar({Key? key}) : super(key: key);

  @override
  State<UiSnackBar> createState() => _UiSnackBarState();
}

class _UiSnackBarState extends State<UiSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiSnackBar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
