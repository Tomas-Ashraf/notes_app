// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          // autovalidateMode: autovalidateMode,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 15, left: 16, right: 16),
                child: CustomTextFormField(
                  label: 'Title',
                  onSaved: (value) {
                    title = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
                child: CustomTextFormField(
                  label: 'Content',
                  onSaved: (value) {
                    subTitle = value;
                  },
                  minLines: 5,
                ),
              ),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    AddNoteCubit().addNote(
                      NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: 'date',
                          color: 1),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
