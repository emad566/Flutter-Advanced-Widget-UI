import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiRadioListTile extends StatefulWidget {
  const UiRadioListTile({Key? key}) : super(key: key);

  @override
  State<UiRadioListTile> createState() => _UiRadioListTileState();
}

class _UiRadioListTileState extends State<UiRadioListTile> {
  dynamic groupValue;
  Map<int, dynamic> answers = {};

  void myDialog(BuildContext context, String correct, int index) {
    AlertDialog alert = AlertDialog(
      title: myText('Answer'),
      content: Container(
        color: answers[index] == correct ? Colors.white : Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            myText(answers[index] == correct ? 'True' : 'False'),
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
              children: [
                buildQuestion(context, '5+2?', '1', '5', '7', '7', 1),
                buildQuestion(context, '3+2?', '1', '5', '7', '5', 2),
                buildQuestion(context, '0+1?', '1', '5', '7', '1', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildQuestion(BuildContext context, String ques, String a, String b, String c, String correct, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myText(ques),
        buildRadioListTile(context, a, correct, index),
        buildRadioListTile(context, b, correct, index),
        buildRadioListTile(context, c, correct, index),
        const Divider(
          color: Colors.black,
          thickness: 2,
        ),
        myText('You Selected'),
        if(answers[index] != null)
        Row(
          children: [
            answers[index] == correct?
              const Icon(Icons.done_outline, color: Colors.red,)
              : const Icon(Icons.highlight_off, color: Colors.green,),
            myText('${answers[index]}')
          ],
        ),
        const Divider(
          color: Colors.blue,
          thickness: 5,
        ),
      ],
    );
  }

  RadioListTile<dynamic> buildRadioListTile(BuildContext context, String value, String correct, int index) {
    return RadioListTile(
      title: myText(value),
      // subtitle: myText('subTitle'),
      value: value,
      groupValue:  answers[index],
      onChanged: (val){
        setState(() {
          groupValue = val;
          answers[index] = val;
          // myDialog(context, correct, index);
        });
      },
    );
  }
}
