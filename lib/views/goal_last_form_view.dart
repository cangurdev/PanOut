import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/submit_button.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';
import 'package:pan_out/widgets/input/dropdown_input.dart';
import 'package:pan_out/widgets/input/text_input.dart';

class GoalLastForm extends StatelessWidget {
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
                  DropdownInput(
                    title: "Hedef Sıklığın Nedir?",
                    choices: kFrequencies,
                    goalKey: "frequency",
                  ),
                  TextInput(
                    title: "Kaç sayfa okumak istiyorsun",
                    goalKey: "amount",
                  ),
                ],
              ),
              Expanded(
                flex: 0,
                child: SubmitButton(
                    text: "Oluştur",
                    route: "/home",
                    bgColor: kSecondaryColor),
              ),
            ],
          ),
        ));
  }
}
