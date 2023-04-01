import 'package:flutter/material.dart';

class UiFlushbar extends StatefulWidget {
  const UiFlushbar({Key? key}) : super(key: key);

  @override
  State<UiFlushbar> createState() => _UiFlushbarState();
}

class _UiFlushbarState extends State<UiFlushbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiFlushbar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
