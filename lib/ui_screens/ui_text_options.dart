import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiTextOption extends StatefulWidget {
  const UiTextOption({Key? key}) : super(key: key);

  @override
  State<UiTextOption> createState() => _UiTextOptionState();
}

class _UiTextOptionState extends State<UiTextOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.blue,
            child: myTextOptions(),
          ),
        ),
      ),
    );
  }

  Column myTextOptions() {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              Container(
                width: 200,
                height: 80,
                color: Colors.green,
                child: const SelectableText(
                  'Clip is text This is text This is text This is text This is text This is text This is text This is text ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  showCursor: true,
                  cursorWidth: 10,
                  cursorHeight: 30,
                ),

              ),
              const SizedBox(height: 10,),
              Container(
                width: 200,
                height: 80,
                color: Colors.green,
                child: const Text(
                  'Clip is text This is text This is text This is text This is text This is text This is text This is text ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  overflow: TextOverflow.clip,
                  softWrap: false,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 200,
                height: 80,
                color: Colors.green,
                child: const Text(
                  'Clip is text This is text This is text This is text This is text This is text This is text This is text ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  overflow: TextOverflow.clip,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 200,
                height: 80,
                color: Colors.green,
                child: const Text(
                  'Ellipsis is text This is text This is text This is text This is text This is text This is text This is text ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 200,
                height: 80,
                color: Colors.green,
                child: const Text(
                  'Fade is text This is text This is text This is text This is text This is text This is text This is text ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  overflow: TextOverflow.fade,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 200,
                height: 80,
                color: Colors.green,
                child: const Text(
                  'Visible is text This is text This is text This is text This is text This is text This is text This is text ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(height: 10,),
            ],
          );
  }
}
