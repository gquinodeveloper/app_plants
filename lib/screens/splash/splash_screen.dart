import 'package:flutter/material.dart';
import 'package:g58_appdesign/screens/splash/widgets/header.dart';
import 'package:g58_appdesign/screens/splash/widgets/splash_form.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.kDark,
              AppTheme.kDark,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: const [
            Header(),
            SplashForm(),
          ],
        ),
      ),
    );
  }
}
