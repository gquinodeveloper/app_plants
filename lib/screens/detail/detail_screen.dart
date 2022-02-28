import 'package:flutter/material.dart';
import 'package:g58_appdesign/global/content_title.dart';
import 'package:g58_appdesign/models/plant_model.dart';
import 'package:g58_appdesign/screens/detail/widgets/add_card.dart';
import 'package:g58_appdesign/screens/detail/widgets/descripcion.dart';
import 'package:g58_appdesign/screens/detail/widgets/header.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.plantModel,
  }) : super(key: key);

  final PlantModel plantModel;
  @override
  Widget build(BuildContext context) {
    /* double _wp = MediaQuery.of(context).size.width;
    double _hp = MediaQuery.of(context).size.height; */
    return Scaffold(
      backgroundColor: AppTheme.kBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppTheme.kDark,
      ),
      body: Stack(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(plantModel: plantModel),
                const ContentTitle(
                  title: "About",
                  wHorizontal: 20.0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Description(
                      description: plantModel.description,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AddCard(price: plantModel.price)
        ],
      ),
    );
  }
}
