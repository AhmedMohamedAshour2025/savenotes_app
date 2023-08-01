import 'package:finalapp/cubits/notes_cubit/notes_state.dart';
import 'package:finalapp/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit(super.initialState);
  List<NoteModel>? notes;
  
  fetchAllNotes() {
    var notesbox = Hive.box<NoteModel>(kNotesBox);
    notes = notesbox.values.toList();
    print('notes = $notes');
  }
}
