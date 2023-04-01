import 'package:flutter/material.dart';

class UiGoogleNavbar extends StatefulWidget {
  const UiGoogleNavbar({Key? key}) : super(key: key);

  @override
  State<UiGoogleNavbar> createState() => _UiGoogleNavbarState();
}

class _UiGoogleNavbarState extends State<UiGoogleNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiGoogleNavbar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
