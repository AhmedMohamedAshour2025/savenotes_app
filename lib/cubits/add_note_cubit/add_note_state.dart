part of 'add_note_cubit.dart';

class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  String? errMesaage;
  AddNoteFailure(this.errMesaage);
}