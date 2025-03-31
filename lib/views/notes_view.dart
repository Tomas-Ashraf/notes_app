// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

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
                  child: Icon(
                    Icons.search,
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

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 15, left: 16, right: 16),
            child: CustomTextField(
              label: 'Title',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
            child: CustomTextField(
              label: 'Content',
              maxLines: 5,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: Container(
                width: 700,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Add',
                  style: TextStyle(color: Colors.black),
                )),
              )),
        ],
      ),
    );
  }
}
