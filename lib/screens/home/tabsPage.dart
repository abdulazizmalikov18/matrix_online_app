import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class TabAllPage extends StatelessWidget {
  const TabAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kWhite),
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
              trailing: const Icon(Icons.favorite, color: kBlue),
              onTap: () => print('Tapped on Row $index'),
            ),
          ),
        );
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kWhite),
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
              trailing: const Icon(Icons.favorite, color: kBlue),
              onTap: () => print('Tapped on Row $index'),
            ),
          ),
        );
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kWhite),
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
              trailing: const Icon(Icons.favorite, color: kBlue),
              onTap: () => print('Tapped on Row $index'),
            ),
          ),
        );
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kWhite),
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
              trailing: const Icon(Icons.favorite, color: kBlue),
              onTap: () => print('Tapped on Row $index'),
            ),
          ),
        );
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kWhite),
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
              trailing: const Icon(Icons.favorite, color: kBlue),
              onTap: () => print('Tapped on Row $index'),
            ),
          ),
        );
      },
    );
  }
}
