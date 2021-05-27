import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/button/submit_button.dart';
import 'dropdown_input.dart';

class TypeFormBody extends StatelessWidget {
  const TypeFormBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DropdownInput(),
        Expanded(
          flex: 0,
          child: SubmitButton(
              text: "Devam Et",
              route: "/last-form",
              category: "aa",
              bgColor: kSecondaryColor),
        ),
      ],
    );
  }
}