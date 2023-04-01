import 'package:flutter/material.dart';

class UiInheritedWidgetContext extends StatefulWidget {
  const UiInheritedWidgetContext({Key? key}) : super(key: key);

  @override
  State<UiInheritedWidgetContext> createState() => _UiInheritedWidgetContextState();
}

class _UiInheritedWidgetContextState extends State<UiInheritedWidgetContext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiInheritedWidgetContext'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
