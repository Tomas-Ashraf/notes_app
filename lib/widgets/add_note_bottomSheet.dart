// ignore_for_file: file_names, unused_local_variable

// import 'package:flutter/widgets.dart';
// import 'package:notes_app/widgets/custom_button.dart';
// import 'package:notes_app/widgets/custom_text_field.dart';

// class AddNoteBottomSheet extends StatelessWidget {
//   const AddNoteBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//       child: SingleChildScrollView(
//         child: AddNoteForm(),
//       ),
//     );
//   }
// }

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
