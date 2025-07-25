import 'package:dilmininote/themes/fonts_fldev.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: SafeArea(
        child: Container(
          width: sizeScreen.width,
          height: sizeScreen.height,
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                  title: Text('title', style: black500),
                  subtitle: Text("Subtitle", style: black400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
