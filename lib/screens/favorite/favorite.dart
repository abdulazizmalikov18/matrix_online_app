import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

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
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: const [
            Expanded(
              child: _FavoritePageList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoritePageList extends StatelessWidget {
  const _FavoritePageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.headline6;
    var favoritepage = context.watch<FavoritePageModel>();
    return ListView.builder(
      itemCount: favoritepage.item.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kWhite,
          ),
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      favoritepage.item[index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(favoritepage.item[index].name),
                  const SizedBox(height: 4),
                  Text(
                    favoritepage.item[index].subtitle,
                    style: const TextStyle(color: ktextfild),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    favoritepage.item[index].date,
                    style: const TextStyle(color: ktextfild),
                  ),
                ],
              ),
              Expanded(child: Container()),
              // const Icon(Icons.favorite, color: kBlue),
              IconButton(
                onPressed: () {
                  favoritepage.remove(favoritepage.item[index]);
                },
                icon: const Icon(
                  Icons.favorite,
                  color: kBlue,
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}
