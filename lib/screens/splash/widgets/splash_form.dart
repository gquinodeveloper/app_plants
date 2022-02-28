import 'package:flutter/material.dart';
import 'package:g58_appdesign/screens/login/login_screen.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class SplashForm extends StatelessWidget {
  const SplashForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 50.0),
        Container(
          width: 260.0,
          height: 50.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppTheme.kGreen,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Row(
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.ac_unit_rounded,
                  color: AppTheme.kGreen,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                "Continue with Facebook",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => const LoginScreen(),
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
            width: 260.0,
            height: 50.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                color: AppTheme.kGreen,
                width: 2.0,
              ),
            ),
            child: const Text(
              "I'll use email or phone",
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
