import 'package:flutter/material.dart';

class UiTextFormField extends StatefulWidget {
  const UiTextFormField({Key? key}) : super(key: key);

  @override
  State<UiTextFormField> createState() => _UiTextFormFieldState();
}

class _UiTextFormFieldState extends State<UiTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiTextFormField'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
