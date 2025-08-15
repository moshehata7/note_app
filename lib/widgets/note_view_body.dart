import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return NoteItem();
        },
      );
  }
}
