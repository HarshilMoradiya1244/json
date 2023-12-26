import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/color.dart';
import '../provider/album_provider.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  AlbumsProvider? providerr;
  AlbumsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<AlbumsProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<AlbumsProvider>();
    providerw = context.watch<AlbumsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Albums',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: black),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.albums.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.albums[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.albums[index].title}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
