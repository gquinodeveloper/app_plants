import 'package:flutter/material.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 100.0,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black38,
                  ),
                ),
                Text(
                  "\$ $price",
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: AppTheme.kDark,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Container(
              width: 170.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: AppTheme.kGreen,
                borderRadius: BorderRadius.circular(40.0),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
