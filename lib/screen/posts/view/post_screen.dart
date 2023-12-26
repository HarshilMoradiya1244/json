import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../util/color.dart';
import '../provider/post_provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  PostsProvider? providerr;
  PostsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<PostsProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<PostsProvider>();
    providerw = context.watch<PostsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          title: Text(
            'Posts',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.post.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.post[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.post[index].title}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
              subtitle: Text(
                '${providerw!.post[index].body}',
                style: TextStyle(color: black, fontSize: 15),
              ),
            );
          },
        ),
      ),
    );
  }
}
