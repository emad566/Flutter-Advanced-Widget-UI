import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiSnackBar extends StatefulWidget {
  const UiSnackBar({Key? key}) : super(key: key);

  @override
  State<UiSnackBar> createState() => _UiSnackBarState();
}

class _UiSnackBarState extends State<UiSnackBar> {
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
                    mySnackBar(context);
                  },
                  child: myText('Show SnackBar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void mySnackBar(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: myText('Snack Message'),
      backgroundColor: Colors.red,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 20,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'Label',
        onPressed: (){

        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
