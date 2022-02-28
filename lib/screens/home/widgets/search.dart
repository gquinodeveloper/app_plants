import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 280.0,
            height: 55.0,
            padding: const EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Search plants",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black38,
              ),
            ),
          ),
          Container(
            width: 60.0,
            height: 55.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Icon(
              Icons.account_tree_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
