import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class ButtonInput extends StatelessWidget {
  const ButtonInput({Key? key, required this.lable}) : super(key: key);

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: 60,
          child: Text(
            lable,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
