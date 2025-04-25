import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(label: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            label: 'Content',
            minLines: 5,
          ),
        ],
      ),
    );
  }
}
