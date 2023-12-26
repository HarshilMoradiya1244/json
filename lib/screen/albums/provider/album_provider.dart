
import 'package:flutter/material.dart';

import '../../../util/jsonhelper.dart';
import '../model/album_model.dart';

class AlbumsProvider with ChangeNotifier{
  List<AlbumModel> albums = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<AlbumModel> l1 = await jsonHelper.json_AlbumsToList();
    albums = l1;
    notifyListeners();
  }
}