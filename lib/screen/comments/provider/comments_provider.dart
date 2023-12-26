import 'package:flutter/material.dart';
import '../../../utils/jsonhelper.dart';
import '../model/comments_model.dart';

class CommentProvider with ChangeNotifier {
  List<CommentModel> comment = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CommentModel> l1 = await jsonHelper.json_CommentToList();
    comment = l1;
    notifyListeners();
  }
}