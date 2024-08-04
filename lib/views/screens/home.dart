import 'package:flutter/material.dart';
import 'package:wallpaper_app/controller/api_oper.dart';
import 'package:wallpaper_app/views/widgets/cat_block.dart';
import 'package:wallpaper_app/views/widgets/custom_app_bar.dart';
import 'package:wallpaper_app/views/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ApiOperation.getTrendingWallpapers();
  }
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
          Search_Bar(),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Replace 10 with your actual item count
                      itemBuilder: (context, index) => CatBlock(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
