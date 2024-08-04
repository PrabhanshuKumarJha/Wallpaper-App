import 'package:flutter/material.dart';

class CatBlock extends StatelessWidget {
  const CatBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
            child: Image.network(
              height: 100,
              width: 75,
              "https://images.pexels.com/photos/57901/pexels-photo-57901.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
             
              fit: BoxFit.cover, // Adjust the fit property as needed
            ),
          ),
          Container(
            height: 100,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(12)),
          ),
          const Positioned(
            left: 20,
            child: Text("Ganga", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
