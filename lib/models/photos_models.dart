class PhotosMode1 {
  String imgSrc;
  String photoName;

  PhotosMode1({required this.photoName, required this.imgSrc});

  static PhotosMode1 fromApi2app (Map<String, dynamic> photoMap) {
    return PhotosMode1(
      photoName: photoMap["photographer"],
      imgSrc: (photoMap["src"])["portrait"],
    );
  }
}
