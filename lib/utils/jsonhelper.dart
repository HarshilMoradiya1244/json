import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json/screen/albums/model/album_model.dart';
import 'package:json/screen/photos/model/photos_model.dart';
import 'package:json/screen/todos/model/todos_model.dart';

import '../screen/comments/model/comments_model.dart';
import '../screen/posts/model/post_model.dart';

class JsonHelper {
  Future<List<PostModel>> json_PostToList() async {
    var jsonString = await rootBundle.loadString('assets/json/posts.json');
    List post = jsonDecode(jsonString);
    List<PostModel> modelList =
    post.map((e) => PostModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<CommentModel>> json_CommentToList() async {
    var jsonString = await rootBundle.loadString('assets/json/comments.json');
    List comment = jsonDecode(jsonString);
    List<CommentModel> modelList =
    comment.map((e) => CommentModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<AlbumModel>> json_AlbumsToList() async {
    var jsonString = await rootBundle.loadString('assets/json/albums.json');
    List album = jsonDecode(jsonString);
    List<AlbumModel> modelList =
    album.map((e) => AlbumModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<TodoModel>> json_TodoToList() async {
    var jsonString = await rootBundle.loadString('assets/json/todos.json');
    List todo = jsonDecode(jsonString);
    List<TodoModel> modelList =
    todo.map((e) => TodoModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<PhotoModel>> json_PhotoToList() async {
    var jsonString = await rootBundle.loadString('assets/json/photos.json');
    List photo = jsonDecode(jsonString);
    List<PhotoModel> modelList =
    photo.map((e) => PhotoModel.mapToModel(e)).toList();
    return modelList;
  }
}