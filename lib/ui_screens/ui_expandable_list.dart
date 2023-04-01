import 'package:flutter/material.dart';

class UiExpandableList extends StatefulWidget {
  const UiExpandableList({Key? key}) : super(key: key);

  @override
  State<UiExpandableList> createState() => _UiExpandableListState();
}

class _UiExpandableListState extends State<UiExpandableList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiExpandableList'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
