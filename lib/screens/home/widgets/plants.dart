import 'package:flutter/material.dart';
import 'package:g58_appdesign/models/plant_model.dart';
import 'package:g58_appdesign/screens/detail/detail_screen.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class Plants extends StatelessWidget {
  const Plants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 330.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => DetailScreen(
                    plantModel: plants[index],
                  ),
                ),
              );
            },
            child: Container(
              width: 220.0,
              margin: const EdgeInsets.only(left: 15.0, top: 20.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170.0,
                    decoration: BoxDecoration(
                      color: AppTheme.kDark,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    plants[index].category,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    plants[index].title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: AppTheme.kDark,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      print(plants[index].title);
                    },
                    contentPadding: EdgeInsets.all(0.0),
                    title: const Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black38,
                      ),
                    ),
                    subtitle: Text(
                      "\$${plants[index].price}",
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: AppTheme.kDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const CircleAvatar(
                      radius: 18.0,
                      backgroundColor: AppTheme.kGreen,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  /*  Text(
                    "price",
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black38,
                    ),
                  ), */
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
