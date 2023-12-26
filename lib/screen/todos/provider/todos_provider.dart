import 'package:flutter/material.dart';
import '../../../utils/jsonhelper.dart';
import '../model/todos_model.dart';

class TodoProvider with ChangeNotifier {
  List<TodoModel> comment = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<TodoModel> l1 = await jsonHelper.json_TodoToList();
    comment = l1;
    notifyListeners();
  }
}
