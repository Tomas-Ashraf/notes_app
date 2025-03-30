// ignore_for_file: sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = const [
      Colors.amber,
      Colors.green,
      Colors.grey,
      Colors.cyan,
      Colors.blueAccent,
    ];
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(
          color: colors[index],
        ),
      ),
      itemCount: 5,
    );
  }
}
