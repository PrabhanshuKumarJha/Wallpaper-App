import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/widgets/custom_app_bar.dart';
import 'package:wallpaper_app/views/widgets/search_bar.dart'; // Added import

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: CustomAppBar(),
      ),
      body: Column(
        children: [
          Search_Bar(), // Changed Search_Bar to SearchBar
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 4,
                          mainAxisExtent: 400,
                        ),
                        itemCount: 10, // Replace 10 with your actual item count
                        itemBuilder: (context, index) => Container(
                          height: 300,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 12, 139, 207),
                            borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                            child: Image.network(
                              "https://images.pexels.com/photos/57901/pexels-photo-57901.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              fit: BoxFit.cover, // Adjust the fit property as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
