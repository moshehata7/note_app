import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_form.dart';

class addNoteBottomsheet extends StatelessWidget {
  const addNoteBottomsheet({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: AddNoteForm()
      ),
    );
  }
}
