import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

AppBar homeAppBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text(
        'Salom 👋',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(
              Icons.notifications,
              color: kBlue,
              size: 26,
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(
              Icons.favorite,
              color: kBlue,
              size: 26,
            ),
          ),
        ),
      ],
    );
