import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/widgets/custom_app_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
          Stack(
            children: [
              Image.network(
                "https://images.pexels.com/photos/2526935/pexels-photo-2526935.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                height: 150,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.black38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Train",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
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
    );
  }
}
