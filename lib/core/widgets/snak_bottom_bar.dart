import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:matrix_online_app/provider/my_bottom_provider.dart';
import 'package:provider/provider.dart';

class SnakeNavigationBars extends StatelessWidget {
  const SnakeNavigationBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      currentIndex: context.watch<MyBottomProvider>().index,
      onTap: (index) {
        context.read<MyBottomProvider>().changeIndex(index);
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'tickets'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.podcasts), label: 'microphone'),
        // BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
      ],
    );
  }
}
