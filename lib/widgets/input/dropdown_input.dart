import 'package:flutter/material.dart';

typedef void StringCallback(String val);

class DropdownInput extends StatefulWidget {
  final String title;
  final List<String> choices;
  final StringCallback callback;

  const DropdownInput({
    Key key,
    this.title,
    this.choices,
    this.callback,
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
              widget.callback(newValue);
              print(newValue);
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
