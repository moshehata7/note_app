import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});
  final List colors =const [
    Colors.amber,
    Colors.blue ,
    Colors.green,
    Colors.pinkAccent   
      ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return NoteItem(color: colors[index]);
      },
    );
  }
}
