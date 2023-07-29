import 'package:finalapp/views/notes_view.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants/constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const NotesVeiw());
  }
}
