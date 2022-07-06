import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/models/favoriteListModel.dart';
import 'package:matrix_online_app/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class MyListItem extends StatelessWidget {
  final int index;
  const MyListItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = context.select<FavoriteListModel, Item>(
      (favoritelist) => favoritelist.getByPosition(index),
    );
    return Padding(
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
                    item.image,
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
                Text(item.name),
                const SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style:const TextStyle(color: ktextfild),
                ),
                const SizedBox(height: 16),
                Text(
                  item.date,
                  style:const TextStyle(color: ktextfild),
                ),
              ],
            ),
            Expanded(child: Container()),
            // const Icon(Icons.favorite, color: kBlue),
            _AddButton(item: item),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Item item;
  const _AddButton({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isInFavoritePage = context.select<FavoritePageModel, bool>(
      (favoritepage) => favoritepage.item.contains(item),
    );
    return IconButton(
      icon: isInFavoritePage
          ? const Icon(
              Icons.favorite,
              color: kBlue,
            )
          : const Icon(Icons.favorite_border, color: kBlue,),
      onPressed: isInFavoritePage
          ? () {
              var favoritepage = context.read<FavoritePageModel>();
              favoritepage.remove(item);
            }
          : () {
              var favoritepage = context.read<FavoritePageModel>();
              favoritepage.add(item);
            },
    );
  }
}

