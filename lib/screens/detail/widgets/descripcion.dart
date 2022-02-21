import 'package:flutter/material.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 12.0,
          color: AppTheme.kDark,
        ),
      ),
    );
  }
}
