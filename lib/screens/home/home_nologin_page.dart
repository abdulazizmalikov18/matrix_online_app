import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/banner.dart';
import 'package:matrix_online_app/core/components/search.dart';
import 'package:matrix_online_app/core/widgets/appbarNoLogin.dart';

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
            children: [
              const SearchInput(),
              const BannerDecoretion(),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: const Text(
                      'Kategoriya',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 30,
                  //   margin: const EdgeInsets.symmetric(horizontal: 16),
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: kategoriyModelList.length,
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         alignment: Alignment.center,
                  //         padding:const EdgeInsets.all(8.0),
                  //         margin: const EdgeInsets.only(right: 16),
                  //         decoration: BoxDecoration(
                  //           color: kBlue,
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //       child: Text(kategoriyModelList[index].name),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
