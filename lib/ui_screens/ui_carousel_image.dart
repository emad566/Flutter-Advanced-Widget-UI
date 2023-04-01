import 'package:flutter/material.dart';

class UiCarouselImage extends StatefulWidget {
  const UiCarouselImage({Key? key}) : super(key: key);

  @override
  State<UiCarouselImage> createState() => _UiCarouselImageState();
}

class _UiCarouselImageState extends State<UiCarouselImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiCarouselImage'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
