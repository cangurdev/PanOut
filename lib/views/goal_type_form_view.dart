import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/submit_button.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';

class GoalTypeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(double.infinity, getProportionateScreenHeight(145)),
          child: SafeArea(child: FormNavbar(title: "Hedef Türünü Belirle")),
        ),
        bottomNavigationBar: SizedBox(
            height: getProportionateScreenHeight(64), child: BottomNavbar()),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Hedef Türü Seç",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height:10),
                  DropdownInput(),
                ],
              ),
              Expanded(
                flex: 0,
                child: SubmitButton(text: "Devam Et", bgColor: kSecondaryColor),
              ),
            ],
          ),
        ));
  }
}

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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
    );
  }
}
