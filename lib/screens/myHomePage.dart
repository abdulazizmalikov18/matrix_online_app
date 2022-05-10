import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/widgets/bodyNoLogin.dart';
import 'package:matrix_online_app/core/widgets/bottom_navigation_bar.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: getbodyNoLogin(context),
      // bottomNavigationBar:const SnakeNavigationBars(),
      bottomNavigationBar: bottombar(context),
    );
  }
}
