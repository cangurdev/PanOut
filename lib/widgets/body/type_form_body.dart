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
  String category;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DropdownInput(
          title: "Hedef Türü Seç",
          choices: ["Sayfa Sayısı", "Kitap Sayısı"],
          callback: (val)=>setState(()=> category = val),
        ),
        Expanded(
          flex: 0,
          child: SubmitButton(
              text: "Devam Et",
              route: "/last-form",
              category: category,
              bgColor: kSecondaryColor),
        ),
      ],
    );
  }
}
