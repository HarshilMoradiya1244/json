import 'package:flutter/material.dart';
import 'package:json/screen/photos/model/photos_model.dart';

import '../../../utils/jsonhelper.dart';

class PhotoProvider with ChangeNotifier {
  List<PhotoModel> comment = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<PhotoModel> l1 = await jsonHelper.json_PhotoToList();
    comment = l1;
    notifyListeners();
  }
}
