// ignore_for_file: non_constant_identifier_names

abstract class NotesStates {}

class NotesInitial extends NotesStates {}

class AddNoteLoading extends NotesStates {}

class AddNoteSuccess extends NotesStates {}

class AddNoteFailed extends NotesStates {
  final String errMessage;

  AddNoteFailed(this.errMessage);
}
