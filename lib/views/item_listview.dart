import 'package:finalapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:finalapp/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/notes_cubit/notes_state.dart';
import 'widgets/notes_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        print(notes.length);
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding:const EdgeInsets.only(bottom: 16),
              child: NotesItem(note: notes[index],),
            );
          },
        );
      },
    );
  }
}
