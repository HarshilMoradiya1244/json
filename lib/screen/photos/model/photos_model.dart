class PhotoModel {
  int? albumId, id;
  String? title, url, thumbnailurl;

  PhotoModel({this.id, this.albumId, this.title, this.thumbnailurl, this.url});

  factory PhotoModel.mapToModel(Map m1) {
    return PhotoModel(
      id: m1['id'],
      albumId: m1['userId'],
      title: m1['title'],
      url: m1['url'],
      thumbnailurl: m1['thurl'],
    );
  }
}
