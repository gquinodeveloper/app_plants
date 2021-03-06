import 'package:flutter/material.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    Key? key,
    required this.title,
    this.wHorizontal = 15.0,
  }) : super(key: key);

  final String title;
  final double wHorizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: wHorizontal,
        vertical: 20.0,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20.0,
          color: AppTheme.kDark,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
