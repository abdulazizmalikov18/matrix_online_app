import 'package:flutter/cupertino.dart';
import 'package:matrix_online_app/core/constants/color.dart';

class TabDecoretion extends StatelessWidget {
  final String title;
  const TabDecoretion({
    Key? key,required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: kBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(title),
    );
  }
}
