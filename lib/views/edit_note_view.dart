import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';
import 'package:note_app/widgets/edit_note_body.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Note"),
       actions: [CustomSearchIcon()]),
  body: EditNoteBody()
    );
  }
}
