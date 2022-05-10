import 'package:flutter/material.dart';
import 'package:matrix_online_app/provider/my_bottom_provider.dart';
import 'package:matrix_online_app/screens/home/home_nologin_page.dart';
import 'package:matrix_online_app/screens/profile/profile_nologin_page.dart';
import 'package:provider/provider.dart';

Widget getbodyNoLogin(BuildContext context) => IndexedStack(
  index:context.watch<MyBottomProvider>().index ,
  children:const [
    HomePage(),
    ProfileNoLogin(),
  ],
);
