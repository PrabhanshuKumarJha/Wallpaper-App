import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/models/photos_models.dart';

class ApiOperation {
  static List<PhotosMode1> TrendingWallpapers = [];
  static Future<List<PhotosMode1>> getTrendingWallpapers() async {
    await http.get(
      Uri.parse("https://api.pexels.com/v1/curated"),
      headers: {"Authorization": "iV3oVEkAHF6exTtNXU4gOvZGDoBVQOxWhzHQdJE9zejUBb2GOUPyGIR4"},
    ).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List photos = jsonData["photos"];
      photos.forEach((element) {
       TrendingWallpapers.add(PhotosMode1.fromApi2app(element));
      });
    });
    return TrendingWallpapers;
  }
}
