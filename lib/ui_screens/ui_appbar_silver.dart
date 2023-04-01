import 'package:flutter/material.dart';

class UiAppBarSilver extends StatefulWidget {
  const UiAppBarSilver({Key? key}) : super(key: key);

  @override
  State<UiAppBarSilver> createState() => _UiAppBarSilverState();
}

class _UiAppBarSilverState extends State<UiAppBarSilver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiAppBarSilver'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
