import 'package:finalapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:finalapp/cubits/notes_cubit/notes_state.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'notes_view_body.dart';
import 'widgets/add_note_bottomsheet.dart';

class NotesVeiw extends StatelessWidget {
  const NotesVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body:const NotesViewBody(),
    );
  }
}


