import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
// part 'notes_states.dart';

class NotesCubit extends Cubit<NotesStates>{
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel noteModel){}
}