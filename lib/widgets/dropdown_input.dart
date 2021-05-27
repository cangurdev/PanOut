import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const DropdownInput({
    Key key,
  }) : super(key: key);

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String dropdownValue = "Kitap Sayısı";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hedef Türü Seç",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height:10),
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
            },
            dropdownColor: Colors.white,
            items: <String>['Sayfa Sayısı', 'Kitap Sayısı']
                .map<DropdownMenuItem<String>>((String value) {
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
