import 'package:flutter/material.dart';

class UiImagePicker extends StatefulWidget {
  const UiImagePicker({Key? key}) : super(key: key);

  @override
  State<UiImagePicker> createState() => _UiImagePickerState();
}

class _UiImagePickerState extends State<UiImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiImagePicker'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
