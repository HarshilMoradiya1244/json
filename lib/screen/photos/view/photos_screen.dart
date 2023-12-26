import 'package:flutter/material.dart';
import 'package:json/screen/photos/provider/photos_provider.dart';
import 'package:provider/provider.dart';
import '../../../utils/color.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({super.key});

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  PhotoProvider? providerr;
  PhotoProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<PhotoProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerw = context.watch<PhotoProvider>();
    providerr = context.read<PhotoProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Photos',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: black),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.comment.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.comment[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.comment[index].title}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
              subtitle: Image.network(
                "${providerw!.comment[index].url}",
                height: 100,
                width: 100,
              ),
            );
          },
        ),
      ),
    );
  }
}
