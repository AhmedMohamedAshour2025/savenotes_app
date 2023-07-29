import 'package:finalapp/constants/constant.dart';
import 'package:finalapp/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
part 'add_note_state.dart';

//import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit(super.initialState);

  addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box(kNotesBox);
      await notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
