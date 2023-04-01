import 'package:flutter/material.dart';

class UiRadioListTile extends StatefulWidget {
  const UiRadioListTile({Key? key}) : super(key: key);

  @override
  State<UiRadioListTile> createState() => _UiRadioListTileState();
}

class _UiRadioListTileState extends State<UiRadioListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Text('UiRadioListTile'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
