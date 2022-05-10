import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key, required this.lable}) : super(key: key);

  final String lable;

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    FocusNode focusNode = FocusNode();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 5.0,
        shadowColor: Colors.black54,
        child: TextFormField(
          cursorColor: kBlue,
          decoration: InputDecoration(
            hintText: lable,
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: kBlue, style: BorderStyle.solid, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 3),
            ),
          ),
        ),
      ),
    );
    // return Container(
    //   alignment: Alignment.center,
    //   height: 60,
    //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: Colors.white,
    //   ),
    //   child: TextField(
    //     key: const Key("buy_subject_input"),
    //     autofocus: true,
    //     focusNode: focusNode,
    //     cursorColor: kBlue,
    //     decoration: InputDecoration(
    //       hintText: lable,
    //       hintStyle: const TextStyle(
    //         color: ktextfild,
    //       ),
    //       fillColor: Colors.white,
    //       filled: true,
    //       border: const UnderlineInputBorder(
    //         borderSide: BorderSide.none,
    //         borderRadius: BorderRadius.all(Radius.circular(10)),
    //       ),
    //     ),
    //     controller: searchController,
    //   ),
    // );
  }
}
