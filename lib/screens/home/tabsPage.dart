import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/mylistitem.dart';

class TabAllPage extends StatelessWidget {
  const TabAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return MyListItem(index);
      },
    );
  }
}

class TabFoundationPage extends StatelessWidget {
  const TabFoundationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return MyListItem(index);
      },
    );
  }
}

class TabFlutterPage extends StatelessWidget {
  const TabFlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return MyListItem(index);
      },
    );
  }
}

class TabBakendPage extends StatelessWidget {
  const TabBakendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return MyListItem(index);
      },
    );
  }
}

class TabFrontendPage extends StatelessWidget {
  const TabFrontendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return MyListItem(index);
      },
    );
  }
}

class TabJavaPage extends StatelessWidget {
  const TabJavaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return MyListItem(index);
      },
    );
  }
}
