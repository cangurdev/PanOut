import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/button/submit_button.dart';
import 'package:pan_out/widgets/input/dropdown_input.dart';
import 'package:pan_out/widgets/input/text_input.dart';

class CustomGoalBody extends StatelessWidget {
  const CustomGoalBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        TextInput(
          title: "Hedef Adı?",
          goalKey: "category",
        ),
        TextInput(
          title: "Hedef Türü?",
          goalKey: "type",
        ),
        TextInput(
          title: "Hedef Miktarı?",
          goalKey: "amount",
        ),
        DropdownInput(
          title: "Hedef Sıklığı",
          choices: kFrequencies,
          goalKey: "frequency",
        ),
        Expanded(
          flex: 0,
          child: SubmitButton(
            text: "Oluştur",
            route: "/home",
            bgColor: kSecondaryColor,
          ),
        )
      ]),
    );
  }
}
