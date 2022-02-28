import 'package:flutter/material.dart';
import 'package:g58_appdesign/models/plant_model.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.plantModel,
  }) : super(key: key);

  final PlantModel plantModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.0,
      color: AppTheme.kDark,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 250.0,
              height: 320.0,
              padding: const EdgeInsets.only(left: 20.0),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plantModel.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  getTitle("Category"),
                  getSubTitle(plantModel.category),
                  getTitle("Type"),
                  getSubTitle("Small"),
                  getTitle("Plants"),
                  getSubTitle("Indoor"),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 250.0,
              height: 300.0,
              color: Colors.transparent,
              child: Hero(
                tag: "key_${plantModel.path}",
                child: Image.asset(plantModel.path),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTitle(String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.white60,
        ),
      ),
    );
  }

  Widget getSubTitle(String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
