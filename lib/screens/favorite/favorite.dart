import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Saved',
          style: TextStyle(color: Colors.black),
        ),
        // titleTextStyle: TextStyle(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              // margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(4),

              child: ListTile(
                leading: Container(
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/rasm1.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Airplane $index'),
                subtitle: const Text('Very Cool'),
                trailing: const Icon(Icons.favorite,color: kBlue),
                onTap: () => print('Tapped on Row $index'),
              ),
            ),
          );
        },
      ),
    );
  }
}
