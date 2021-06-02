import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/input/text_input.dart';

class EditButton extends StatelessWidget {
  final int amount;

  const EditButton({
    Key key,
    this.amount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.edit),
      color: Colors.white,
      iconSize: 26,
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: kBgColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Şu anki Değer: $amount",
                  style: TextStyle(color: Colors.white),
                ),
                TextInput(
                  title: "Yeni Değer",
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text(
                    'Güncelle',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
