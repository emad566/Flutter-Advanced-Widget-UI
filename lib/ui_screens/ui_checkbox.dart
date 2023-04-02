import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiCheckbox extends StatefulWidget {
  const UiCheckbox({Key? key}) : super(key: key);

  @override
  State<UiCheckbox> createState() => _UiCheckboxState();
}

class _UiCheckboxState extends State<UiCheckbox> {
  List<Map<String, dynamic>> quesList= [
    {
      'ques': '5+2>',
      'a': '0',
      'b': '8',
      'c': '1',
      'correct': ['a', 'c'],
    },
    {
      'ques': '0<',
      'a': '0',
      'b': '8',
      'c': '1',
      'correct': ['b', 'c'],
    },
    {
      'ques': '5+2=',
      'a': '10',
      'b': '7',
      'c': '12',
      'correct': ['b'],
    },
  ];

  Map<String, dynamic> answers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ...quesList.map((ques) => buildCheckboxListTileQues(context, ques)).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCheckboxListTileQues(BuildContext context, Map<String, dynamic> ques) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myText(ques['ques']),
          buildCheckboxListTileItem(context, ques, 'a'),
          buildCheckboxListTileItem(context, ques, 'b'),
          buildCheckboxListTileItem(context, ques, 'c'),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          myText('You Selected'),
          if(answers[ques['ques']] != null)
          Row(
            children: [
              (
                  ques['correct'].toList().length == answers[ques['ques']].toList().length
                  &&
                  answers[ques['ques']].toList()
                  .where((e)=>ques['correct'].toList().contains(e)? true : false)
                  .toList().length == ques['correct'].toList().length
              )?
              const Icon(Icons.done_outline, color: Colors.red,)
                  : const Icon(Icons.highlight_off, color: Colors.green,),
              myText('${answers[ques['ques']].join(', ')}'),
            ],
          ),
          const Divider(
            color: Colors.blue,
            thickness: 5,
          ),

        ],
      ),
    );
  }

  CheckboxListTile buildCheckboxListTileItem(BuildContext context, Map<String, dynamic> ques, String key) {
    return CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: myText(ques[key]),
          value: (){
            if (answers[ques['ques']] == null) return false;
            var ans = answers[ques['ques']];
            return ans.contains(key);
          }(),
          onChanged: (val){
            setState(() {
              dynamic ans = [];
              if (answers[ques['ques']] != null){
                ans = answers[ques['ques']];
              }
              if(val != null){
                 val == true? ans.add(key) : ans.remove(key);
                 answers[ques['ques']] = ans.toSet();
              }
            });
          },
        );
  }
}
