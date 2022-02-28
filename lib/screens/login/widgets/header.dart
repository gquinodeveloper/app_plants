import 'package:flutter/material.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 460.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        decoration: const BoxDecoration(
          color: AppTheme.kDark,
          /* gradient: LinearGradient(
            colors: [
              AppTheme.kDark,
              AppTheme.kGreenDark,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ), */
        ),
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            const Text(
              "Clovers Club",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "Sign in to continue",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
            Image.asset(
              "assets/plant_3.png",
              width: 260.0,
            ),
          ],
        ),
      ),
    );
  }
}
