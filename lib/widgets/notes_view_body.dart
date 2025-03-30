// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, use_key_in_widget_constructors, annotate_overrides, avoid_print

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: NoteItem(),
        ),
      ],
    ));
  }
}
