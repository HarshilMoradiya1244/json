import 'package:flutter/material.dart';
import 'package:json/screen/photos/view/photos_screen.dart';
import 'package:json/screen/posts/view/post_screen.dart';
import '../screen/albums/view/albums_screen.dart';
import '../screen/comments/view/comments_screen.dart';
import '../screen/home/view/home_screen.dart';
import '../screen/todos/view/todos_screen.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const HomeScreen(),
  'post': (context) => const PostScreen(),
  'comments': (context) => const CommentsScreen(),
  'albums': (context) => const AlbumsScreen(),
  'photos': (context) => const PhotosScreen(),
  'todo': (context) => const TodoScreen(),
};
