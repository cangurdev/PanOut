import 'package:flutter/material.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/button/submit_button.dart';
import '../input/dropdown_input.dart';
import 'package:provider/provider.dart';

class TypeFormBody extends StatefulWidget {
  const TypeFormBody({
    Key key,
  }) : super(key: key);

  @override
  _TypeFormBodyState createState() => _TypeFormBodyState();
}

class _TypeFormBodyState extends State<TypeFormBody> {
  @override
  Widget build(BuildContext context) {
    int index = context.read<Store>().index;
    context.read<Store>().updateGoal("type", kTypes[index][0]);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DropdownInput(
          title: "Hedef Türü Seç",
          choices: kTypes[index],
          goalKey: "type",
        ),
        Expanded(
          flex: 0,
          child: SubmitButton(
              text: "Devam Et", route: "/last-form", bgColor: kSecondaryColor),
        ),
      ],
    );
  }
}
