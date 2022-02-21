import 'package:flutter/material.dart';
import 'package:g58_appdesign/models/plant_model.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Populars extends StatelessWidget {
  const Populars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: populars.length,
        itemBuilder: (context, index) {
          return Container(
            width: 250.0,
            margin: const EdgeInsets.only(left: 15.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                Image.asset(populars[index].path),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15.0),
                    Text(
                      populars[index].category,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      populars[index].title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: AppTheme.kDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$${plants[index].price}",
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: AppTheme.kDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
