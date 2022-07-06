import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/openPageAnimation.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/screens/favorite/favorite.dart';
import 'package:matrix_online_app/screens/notification/notification.dart';

AppBar homeAppBar(context) => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text(
        'Salom 👋',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              OpenPageAnimation(const NotificationPage()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Icon(
                  Icons.notifications,
                  color: kBlue,
                  size: 26,
                ),
                Positioned(
                  top: 9,
                  left: 15,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: kWhite,
                    ),
                  ),
                ),
                Positioned(
                  top: 9,
                  left: 16,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              OpenPageAnimation(const FavoritePage()),
            );
          },
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
