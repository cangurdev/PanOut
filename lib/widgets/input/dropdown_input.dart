import 'package:flutter/material.dart';
import 'package:pan_out/store.dart';
import 'package:provider/provider.dart';

class DropdownInput extends StatefulWidget {
  final String title;
  final List<String> choices;
  final String goalKey;

  const DropdownInput({
    Key key,
    this.title,
    this.choices,
    this.goalKey,
  }) : super(key: key);

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String dropdownValue;
  @override
  void initState() {
    super.initState();
    dropdownValue = widget.choices[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 42,
            underline: SizedBox(),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue;
              });
              context.read<Store>().updateGoal(widget.goalKey, newValue);
              context.read<Store>().setIndex(widget.choices.indexOf(newValue));
              print(context.read<Store>().goal.toMap());
            },
            dropdownColor: Colors.white,
            items: widget.choices.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
