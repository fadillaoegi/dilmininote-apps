import 'package:dilmininote/themes/fonts_fldev.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Write note",
                        style: black600.copyWith(fontSize: 18),
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: "Write note"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.white,
        child: Center(child: Icon(Icons.add)),
      ),
      body: SafeArea(
        child: Container(
          width: sizeScreen.width,
          height: sizeScreen.height,
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: ListTile(
                    title: Text(
                      'title',
                      style: black500.copyWith(fontSize: 22),
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: black400.copyWith(fontSize: 18),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        print("Deleted");
                      },
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: SingleChildScrollView(
                                  child: Column(children: []),
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(Icons.delete, color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
