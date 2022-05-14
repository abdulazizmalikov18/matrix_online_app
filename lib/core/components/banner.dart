import 'package:flutter/material.dart';
import 'package:matrix_online_app/models/banner_model.dart';

class BannerDecoretion extends StatelessWidget {
  const BannerDecoretion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 160,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: bannerModelList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bannerModelList[index].thumbnaiUrl,
            ),
          );
        },
      ),
    );
  }
}
