import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/banner.dart';
import 'package:matrix_online_app/core/components/search.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/core/widgets/appbarNoLogin.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: homeAppBar,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SearchInput(),
                SizedBox(
                  height: 30,
                ),
                BannerDecoretion(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
