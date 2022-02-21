import 'package:flutter/material.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.0,
      color: AppTheme.kDark,
    );
  }
}
