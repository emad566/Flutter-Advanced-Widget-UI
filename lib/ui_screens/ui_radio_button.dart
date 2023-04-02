import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiRadioButton extends StatefulWidget {
  const UiRadioButton({Key? key}) : super(key: key);

  @override
  State<UiRadioButton> createState() => _UiRadioButtonState();
}

class _UiRadioButtonState extends State<UiRadioButton> {
  dynamic groupValue;

  void myDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: myText('Answer'),
      content: Container(
        color: groupValue == 'Emad' ? Colors.white : Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            myText(groupValue == 'Emad' ? 'True' : 'False'),
            ElevatedButton(
              onPressed: () {Navigator.pop(context);},
              child: myText('ok'),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alert);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText('What is your name=?'),
                buildRadioButton('Emad', context),
                buildRadioButton('Mohamed', context),
                buildRadioButton('Ali', context),
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                myText('You Selected'),
                myText('$groupValue'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRadioButton(dynamic value, BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          groupValue = value;
          myDialog(context);
        });
      },
      child: Row(
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (val) {
              setState(() {
                groupValue = val;
                myDialog(context);
              });
            },
          ),
          myText(value),
        ],
      ),
    );
  }
}
