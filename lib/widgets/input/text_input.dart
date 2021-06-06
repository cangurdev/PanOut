import 'package:flutter/material.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:provider/provider.dart';
class TextInput extends StatelessWidget {
  final String title;
  final String goalKey;
  const TextInput({
    Key key,
    this.title,
    this.goalKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: getProportionateScreenWidth(150),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
            ),
            onChanged: (newValue){
              context.read<Store>().updateGoal(goalKey, int.parse(newValue));
            } ,
          ),
        ),
      ],
    );
  }
}
