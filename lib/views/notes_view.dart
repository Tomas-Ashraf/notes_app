// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'package:notes_app/widgets/notes_view_body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.05),
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.search,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

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

// class AddNoteForm extends StatefulWidget {
//   const AddNoteForm({
//     super.key,
//   });

//   @override
//   State<AddNoteForm> createState() => _AddNoteFormState();
// }

// class _AddNoteFormState extends State<AddNoteForm> {
//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> formKey = GlobalKey();
//     AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//     String? title, subTitle;
//     return Form(
//       key: formKey,
//       // autovalidateMode: autovalidateMode,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding:
//                 const EdgeInsets.only(top: 30, bottom: 15, left: 16, right: 16),
//             child: CustomTextFormField(
//               label: 'Title',
//               onSaved: (value) {
//                 title = value;
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
//             child: CustomTextFormField(
//               label: 'Content',
//               onSaved: (value) {
//                 subTitle = value;
//               },
//               minLines: 5,
//             ),
//           ),
//           CustomButton(
//               onTap: () {
//                 if (formKey.currentState!.validate()) {
//                   formKey.currentState!.save();
//                 } else {
//                   autovalidateMode = AutovalidateMode.always;
//                   setState(() {});
//                 }
//               },
//               ),
//         ],
//       ),
//     );
//   }
// }
