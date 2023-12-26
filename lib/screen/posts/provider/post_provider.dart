import 'package:flutter/material.dart';
import '../../../utils/jsonhelper.dart';
import '../model/post_model.dart';

class PostsProvider with ChangeNotifier {
  List<PostModel> post = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<PostModel> l1 = await jsonHelper.json_PostToList();
    post = l1;
    notifyListeners();
  }
}
