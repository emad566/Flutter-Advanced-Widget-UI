import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiSwitch extends StatefulWidget {
  const UiSwitch({Key? key}) : super(key: key);

  @override
  State<UiSwitch> createState() => _UiSwitchState();
}

class _UiSwitchState extends State<UiSwitch> {
  bool isBgLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: isBgLight ? Colors.white : Colors.green,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                myText('BgMode'),
                Switch(
                  value: isBgLight,
                  onChanged: (val){
                    setState(() {
                      isBgLight = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
