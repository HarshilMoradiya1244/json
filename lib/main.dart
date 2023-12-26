import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/screen/albums/provider/album_provider.dart';
import 'package:json/screen/comments/provider/comments_provider.dart';
import 'package:json/screen/photos/provider/photos_provider.dart';
import 'package:json/screen/posts/provider/post_provider.dart';
import 'package:json/screen/todos/provider/todos_provider.dart';
import 'package:json/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CommentProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AlbumsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routes: screen_routes,
      ),
    ),
  );
}

// https://github.com/gita/gita/blob/main/data/chapters.json
