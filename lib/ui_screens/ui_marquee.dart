import 'package:flutter/material.dart';

class UiMarquee extends StatefulWidget {
  const UiMarquee({Key? key}) : super(key: key);

  @override
  State<UiMarquee> createState() => _UiMarqueeState();
}

class _UiMarqueeState extends State<UiMarquee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiMarquee'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
