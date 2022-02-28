import 'package:flutter/material.dart';
import 'package:g58_appdesign/global/content_title.dart';
import 'package:g58_appdesign/screens/home/widgets/category.dart';
import 'package:g58_appdesign/screens/home/widgets/header.dart';
import 'package:g58_appdesign/screens/home/widgets/plants.dart';
import 'package:g58_appdesign/screens/home/widgets/populars.dart';
import 'package:g58_appdesign/screens/home/widgets/search.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Header(),
            Search(),
            Category(),
            Plants(),
            ContentTitle(title: "Popular"),
            Populars(),
          ],
        ),
      ),
    );
  }
}
