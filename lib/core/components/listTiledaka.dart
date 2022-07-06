import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

Widget listTileCopy(index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kWhite),
            // margin: EdgeInsets.all(4),
            padding: const EdgeInsets.all(4),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/rasm1.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Airplane $index'),
                    const SizedBox(height: 4),
                    const Text(
                      "Yusuf Mahmudov",
                      style: TextStyle(color: ktextfild),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "42 dars/3 oy",
                      style: TextStyle(color: ktextfild),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                const Icon(Icons.favorite, color: kBlue),
                const SizedBox(width: 16),
              ],
            ),
          ),
        );