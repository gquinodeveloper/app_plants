import 'package:flutter/material.dart';
import 'package:g58_appdesign/screens/login/widgets/header.dart';
import 'package:g58_appdesign/screens/login/widgets/login_form.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Header(),
          LoginForm(),
        ],
      ),
    );
  }
}
