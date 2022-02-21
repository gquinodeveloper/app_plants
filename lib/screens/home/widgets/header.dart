import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 50.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Best Plants For\nOur Green House",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          //Spacer(),
          CircleAvatar(
            radius: 22.0,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/94/05/22/940522a0743ffb0ab14a42fd3c0555cd.jpg"),
          ),
        ],
      ),
    );
  }
}
