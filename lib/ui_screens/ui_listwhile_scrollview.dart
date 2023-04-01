import 'package:flutter/material.dart';

class UiListWhileScrollView extends StatefulWidget {
  const UiListWhileScrollView({Key? key}) : super(key: key);

  @override
  State<UiListWhileScrollView> createState() => _UiListWhileScrollViewState();
}

class _UiListWhileScrollViewState extends State<UiListWhileScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiListWhileScrollView'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
