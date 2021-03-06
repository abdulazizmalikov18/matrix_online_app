import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/models/favoriteListModel.dart';
import 'package:matrix_online_app/provider/favorite_provider.dart';
import 'package:matrix_online_app/provider/my_bottom_provider.dart';
import 'package:matrix_online_app/screens/myHomePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyBottomProvider()),
        Provider(create: (context) => FavoriteListModel()),
        ChangeNotifierProxyProvider<FavoriteListModel, FavoritePageModel>(
          create: (context) => FavoritePageModel(),
          update: (context, favoritelist, favoritepage) {
            if (favoritepage == null) {
              throw ArgumentError.notNull('favoritepage');
            }
            favoritepage.favoritelist = favoritelist;
            return favoritepage;
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        focusColor: kBlue,
      ),
      home: const MyHomePage(),
    );
  }
}
