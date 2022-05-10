import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/provider/my_bottom_provider.dart';
import 'package:provider/provider.dart';

Widget bottombar(BuildContext context) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kWhite,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: BottomNavigationBar(
        selectedItemColor: kBlue,
        backgroundColor: kWhite,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile'),
        ],
        currentIndex: context.watch<MyBottomProvider>().index,
        onTap: (int index) {
          context.read<MyBottomProvider>().changeIndex(index);
        },
      ),
    );
