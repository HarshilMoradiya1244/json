class TodoModel {
  int? userId, id;
  String? title;
  bool? complete;

  TodoModel({
    this.id,
    this.userId,
    this.title,
    this.complete
  });

  factory TodoModel.mapToModel(Map m1) {
    return TodoModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
      complete: m1['complete'],
    );
  }
}