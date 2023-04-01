import 'package:flutter/material.dart';

class UiAlertDialog extends StatefulWidget {
  const UiAlertDialog({Key? key}) : super(key: key);

  @override
  State<UiAlertDialog> createState() => _UiAlertDialogState();
}

class _UiAlertDialogState extends State<UiAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiAlertDialog'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
