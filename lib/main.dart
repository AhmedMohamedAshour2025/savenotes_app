
import 'package:finalapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:finalapp/cubits/notes_cubit/notes_state.dart';
import 'package:finalapp/simple_bloc_observer.dart';
import 'package:finalapp/views/notes_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants/constant.dart';
import 'models/note_model.dart';

void main() async {
  
  
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox<NoteModel>(kNotesBox);
  


  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(NotesState()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark),
          home: const NotesVeiw()),
    );
  }
}
