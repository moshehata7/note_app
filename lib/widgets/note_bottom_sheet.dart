import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/custom_add_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class addNoteBottomsheet extends StatelessWidget {
  const addNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextField(maxLines: 1, hintText: "Title",),
            CustomTextField(maxLines: 7, hintText: "Content"),
            SizedBox(
              height: 50,
            ),
            CustomAddButton()
          ],
        ),
      ),
    );
  }
}
