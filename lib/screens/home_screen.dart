import 'package:dilmininote/themes/fonts_fldev.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    final titleC = TextEditingController();
    final contentC = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dil~mininote", style: blue400.copyWith(fontSize: 26.0)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                content: SingleChildScrollView(
                  child: SizedBox(
                    width: sizeScreen.width * 0.8,
                    child: Column(
                      children: [
                        Text(
                          "Write note",
                          style: black600.copyWith(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: titleC,
                          decoration: InputDecoration(
                            hintText: "Title Note",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: contentC,
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Content Note",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                              ),
                              child: Text(
                                "Cancel",
                                style: white400.copyWith(fontSize: 14.0),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: Text(
                                "Save",
                                style: white400.copyWith(fontSize: 14.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                        _deleteDialog(context);
                      },
                      child: Icon(Icons.delete, color: Colors.red, size: 30.0),
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

   _deleteDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Are you sure you want to delete this note?",
                  style: black400.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      child: Text("Cancel", style: white600),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                      ),
                      child: Text("Yes", style: white600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
