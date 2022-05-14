import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: kWhite,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              6,
            ),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          hintText: ' Search',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
