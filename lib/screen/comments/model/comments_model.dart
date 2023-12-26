class CommentModel {
  int? postId, id;
  String? name, email, body;

  CommentModel({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  factory CommentModel.mapToModel(Map m1) {
    return CommentModel(
      id: m1['id'],
      postId: m1['postId'],
      name: m1['name'],
      email: m1['email'],
      body: m1['body'],
    );
  }
}
