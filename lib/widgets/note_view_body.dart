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
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 12),
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return NoteItem(color: colors[index]);
        },
      ),
    );
  }
}
