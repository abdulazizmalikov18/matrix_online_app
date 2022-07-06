import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class BannerModel {
  final int id;
  final String title;
  final Color thumbnaiUrl;

  BannerModel(this.id, this.title, this.thumbnaiUrl);
}

List<BannerModel> bannerModelList = [
  BannerModel(1, "title", kBlue),
  BannerModel(2, "title", Colors.red),
  BannerModel(3, "title", Colors.green),
  BannerModel(4, "title", Colors.grey),
];
