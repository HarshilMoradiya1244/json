class AlbumModel {
  int? userId, id;
  String? title;

  AlbumModel({this.id, this.userId, this.title,});

  factory AlbumModel.mapToModel(Map m1) {
    return AlbumModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
    );
  }
}
