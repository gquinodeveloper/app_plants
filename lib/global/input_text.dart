import 'package:flutter/material.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class InpuText extends StatelessWidget {
  const InpuText({
    Key? key,
    required this.labelText,
    required this.iconsText,
  }) : super(key: key);

  final String labelText;
  final IconData iconsText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: AppTheme.kDark,
        fontSize: 12.0,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        //border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(color: AppTheme.kDark),
        prefixIcon: Icon(
          iconsText,
          color: AppTheme.kDark,
          size: 14.0,
        ),
      ),
    );
  }
}
