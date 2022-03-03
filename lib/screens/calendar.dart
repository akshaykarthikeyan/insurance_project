import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() => runApp(GroupedButtonExample());

class GroupedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grouped Buttons Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _checked = []; //["A", "B"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        CheckboxGroup(
          labels: <String>[
            '00',
            '20',
            '25',
          ],
          disabled: ["Wednesday", "Friday"],
          checked: _checked,
          onChange: (bool isChecked, String label, int index) =>
              print("isChecked: $isChecked   label: $label  index: $index"),
          onSelected: (final selected) => setState(() {
            if (selected.length > 1) {
              selected.removeAt(0);
              print('selected length  ${selected.length}');
            } else {
              print("only one");
            }
            _checked = selected;
          }),
        ),
      ]),
    );
    //
  }
}
