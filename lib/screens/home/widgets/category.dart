import 'package:flutter/material.dart';
import 'package:g58_appdesign/models/category_model.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100.0,
            height: 50.0,
            margin: const EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(
              color: categories[index].status ? AppTheme.kGreen : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            alignment: Alignment.center,
            child: Text(
              categories[index].text,
              style: TextStyle(
                fontSize: 14.0,
                color: categories[index].status ? Colors.white : Colors.black38,
              ),
            ),
          );
        },
      ),
    );
  }
}
