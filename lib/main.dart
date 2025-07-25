import 'package:dilmininote/data/database.dart';
import 'package:dilmininote/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final database = MiniNoteDatabase();

  // NOTE: for testing DB
  // await database
  //     .into(database.miniNote)
  //     .insert(
  //       MiniNoteCompanion.insert(
  //         title: 'todo: finish drift setup',
  //         content: 'We can now write queries and define our own tables.',
  //       ),
  //     );
  // List<MiniNoteData> allItems = await database.select(database.miniNote).get();
  // print('items in database: $allItems');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DilminiNote',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
