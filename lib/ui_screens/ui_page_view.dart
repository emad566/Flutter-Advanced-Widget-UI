import 'package:flutter/material.dart';

class UiPageViewer extends StatefulWidget {
  const UiPageViewer({Key? key}) : super(key: key);

  @override
  State<UiPageViewer> createState() => _UiPageViewerState();
}

class _UiPageViewerState extends State<UiPageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiPageViewer'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
