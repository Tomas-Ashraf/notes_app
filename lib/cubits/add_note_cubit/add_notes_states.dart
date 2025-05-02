
// ignore_for_file: non_constant_identifier_names

abstract class AddNoteStates {}

class AddNotesInitial extends AddNoteStates {}

class AddNoteLoading extends AddNoteStates {}

class AddNoteSuccess extends AddNoteStates {}

class AddNoteFailed extends AddNoteStates {
  final String errMessage;

  AddNoteFailed(this.errMessage);
}
