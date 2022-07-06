import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/banner.dart';
import 'package:matrix_online_app/core/components/search.dart';
import 'package:matrix_online_app/core/widgets/appbarNoLogin.dart';
import 'package:matrix_online_app/screens/home/tabbarwidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: homeAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SearchInput(),
              BannerDecoretion(),
              TabBarWidgets()
              // Hozircha()
            ],
          ),
        ],
      ),
    );
  }
}
