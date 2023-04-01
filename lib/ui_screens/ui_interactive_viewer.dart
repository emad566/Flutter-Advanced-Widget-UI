import 'package:flutter/material.dart';

class UiInteractiveViewer extends StatefulWidget {
  const UiInteractiveViewer({Key? key}) : super(key: key);

  @override
  State<UiInteractiveViewer> createState() => _UiInteractiveViewerState();
}

class _UiInteractiveViewerState extends State<UiInteractiveViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiInteractiveViewer'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
