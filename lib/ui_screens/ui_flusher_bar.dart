import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiFlushbar extends StatefulWidget {
  const UiFlushbar({Key? key}) : super(key: key);

  @override
  State<UiFlushbar> createState() => _UiFlushbarState();
}

class _UiFlushbarState extends State<UiFlushbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showMyFlushBar(context);
                  },
                  child: myText('Show Flush Bar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showMyFlushBar(BuildContext context) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      mainButton: TextButton(
        onPressed: (){Navigator.pop(context);},
        child: const Text('Close!', style: TextStyle(fontSize: 18, color: Colors.white),),
      ),
      backgroundColor: Colors.green,
      title: "Title",
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      icon: Icon(
        Icons.info_outline,
        size: 28.0,
        color: Colors.blue[300],
      ),
      duration: const Duration(seconds: 3),
      leftBarIndicatorColor: Colors.blue[300],
    ).show(context);
  }
}
