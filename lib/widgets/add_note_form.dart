import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_add_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> keyForm = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: keyForm,
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            maxLines: 1,
            hintText: "Title",
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 7,
            hintText: "subTitle",
          ),
          SizedBox(height: 50),
          CustomAddButton(
            onTap: () {
              if (keyForm.currentState!.validate()) {
                keyForm.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
