import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/banner.dart';
import 'package:matrix_online_app/core/components/search.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/core/widgets/appbarNoLogin.dart';
import 'package:matrix_online_app/screens/home/tabsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = [
      const TabAllPage(),
      const TabFlutterPage(),
      const TabBakendPage(),
      const TabFrontendPage(),
      const TabJavaPage()
    ];

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
            children: [
              const SearchInput(),
              const BannerDecoretion(),
              DefaultTabController(
                length: 5,
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
                        tabs: [
                          Tab(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: kBlue,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text('All'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: kBlue,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text('Flutter'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: kBlue,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text('Backend'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: kBlue,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text('Frontend'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: kBlue,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text('Java'),
                            ),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
