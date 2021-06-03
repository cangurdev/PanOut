import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/button/submit_button.dart';
import '../input/dropdown_input.dart';

class TypeFormBody extends StatefulWidget {
  const TypeFormBody({
    Key key,
  }) : super(key: key);

  @override
  _TypeFormBodyState createState() => _TypeFormBodyState();
}

class _TypeFormBodyState extends State<TypeFormBody> {
  String type = "";

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments as int;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DropdownInput(
          title: "Hedef Türü Seç",
          choices: kTypes[index],
          callback: (val) => setState(() => type = val),
        ),
        Expanded(
          flex: 0,
          child: SubmitButton(
              text: "Devam Et",
              route: "/last-form",
              category: kTypes[index].indexOf(type),
              bgColor: kSecondaryColor),
        ),
      ],
    );
  }
}
