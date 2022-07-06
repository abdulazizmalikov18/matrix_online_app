import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/tabsdecoretion.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/screens/home/tabsPage.dart';

class TabBarWidgets extends StatelessWidget {
  const TabBarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = [
      const TabAllPage(),
      const TabFoundationPage(),
      const TabFlutterPage(),
      const TabBakendPage(),
      const TabFrontendPage(),
      const TabJavaPage()
    ];
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              'Category',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: TabBar(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              indicator: BoxDecoration(
                color: kBlue,
                borderRadius: BorderRadius.circular(16),
              ),
              physics: const BouncingScrollPhysics(),
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs:const [
                 Tab(
                  child: TabDecoretion(title: "All"),
                ),
                Tab(
                  child: TabDecoretion(title: "Foundation"),
                ),
                Tab(
                  child: TabDecoretion(title: "Flutter"),
                ),
                Tab(
                  child: TabDecoretion(title: "Backend"),
                ),
                Tab(
                  child: TabDecoretion(title: "Frontend"),
                ),
                Tab(
                  child: TabDecoretion(title: "Java"),
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 800,
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: _kTabPages,
            ),
          ),
        ],
      ),
    );
  }
}
