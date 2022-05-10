import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/data/banner_data_list.dart';

class BannerDecoretion extends StatelessWidget {
  const BannerDecoretion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: hullas.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network(
              hullas[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
