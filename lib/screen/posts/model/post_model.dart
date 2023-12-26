class PostModel {
  int? id, userId;
  String? title, body;

  PostModel({this.id, this.userId, this.title, this.body});

  factory PostModel.mapToModel(Map m1) {
    return PostModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
      body: m1['body'],
    );
  }
}
