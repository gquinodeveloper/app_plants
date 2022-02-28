import 'package:flutter/material.dart';
import 'package:g58_appdesign/global/input_text.dart';
import 'package:g58_appdesign/screens/app_root.dart';
import 'package:g58_appdesign/screens/home/home_screen.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 480.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            const InpuText(
              labelText: "Email",
              iconsText: Icons.email_outlined,
            ),
            const SizedBox(height: 20.0),
            const InpuText(
              labelText: "Password",
              iconsText: Icons.lock_open_rounded,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => AppRoot(),
                    transitionsBuilder: (c, anim, a2, child) => FadeTransition(
                      opacity: anim,
                      child: child,
                    ),
                    transitionDuration: const Duration(
                      milliseconds: 800,
                    ),
                  ),
                );
              },
              child: Container(
                height: 50.0,
                margin: const EdgeInsets.only(top: 40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppTheme.kGreen,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: AppTheme.kGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Forgot password",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: AppTheme.kGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
