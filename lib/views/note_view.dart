import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return addNoteBottomsheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: Text("Notes"), 
      actions: [CustomIcon(icon: Icons.search,)]),
      body: NoteViewBody(),
    );
  }
}
