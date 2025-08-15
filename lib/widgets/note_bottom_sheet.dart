import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class addNoteBottomsheet extends StatelessWidget {
  const addNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(maxLines: 1, hintText: "Title",),
          CustomTextField(maxLines: 5, hintText: "Content")
        ],
      ),
    );
  }
}
