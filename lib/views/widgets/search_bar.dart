import 'package:flutter/material.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Color.fromARGB(255, 220, 176, 227),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Wallpapers', // Placeholder text
                border: InputBorder.none, // Remove the default underline border
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding as needed
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Searching...');
            },
          ),
        ],
      ),
    );
  }
}
