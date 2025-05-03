// ignore_for_file: sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = [
      HexColor('FED2E2'),
      HexColor('E9A5F1'),
      HexColor('C68EFD'),
      HexColor('8F87F1'),
      HexColor('FED2E2'),
      HexColor('E9A5F1'),
      HexColor('C68EFD'),
      HexColor('8F87F1'),
      HexColor('FED2E2'),
      HexColor('E9A5F1'),
      HexColor('C68EFD'),
      HexColor('8F87F1'),
      HexColor('FED2E2'),
      HexColor('E9A5F1'),
      HexColor('C68EFD'),
      HexColor('8F87F1'),
      HexColor('FED2E2'),
      HexColor('E9A5F1'),
      HexColor('C68EFD'),
      HexColor('8F87F1'),
      HexColor('FED2E2'),
      HexColor('E9A5F1'),
      HexColor('C68EFD'),
      HexColor('8F87F1'),
    ];
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(
              note: notes[index],
              color: colors[index],
            ),
          ),
          itemCount: notes.length,
        );
      },
    );
  }
}
