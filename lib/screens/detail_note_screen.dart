import 'package:dilmininote/themes/fonts_fldev.dart';
import 'package:flutter/material.dart';

class DetailNoteScreen extends StatelessWidget {
  const DetailNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizedScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dil~mininote", style: blue400.copyWith(fontSize: 26.0)),
      ),
      body: Container(
        width: sizedScreen.width,
        height: sizedScreen.height,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Detail Note", style: black400.copyWith(fontSize: 26.0)),
          ],
        ),
      ),
    );
  }
}
