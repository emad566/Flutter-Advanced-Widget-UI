import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiAlertDialog extends StatefulWidget {
  const UiAlertDialog({Key? key}) : super(key: key);

  @override
  State<UiAlertDialog> createState() => _UiAlertDialogState();
}

class _UiAlertDialogState extends State<UiAlertDialog> {
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
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {
                    showMyDialog(context);
                  },
                  child: myText('Show Alert'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showMyDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: myText('Title'),
      content: SizedBox(
        height: 150,
        child: Column(
          children: [
            const Divider(color: Colors.black,),
            const Text('Dialog Msg'),
            const SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child:  myText('Close!'),
              )
            )
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (context){
        return alert;
      },
      barrierDismissible: false,
      barrierColor: Colors.yellow.withOpacity(0.7),
    );
  }
}
