import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:intl/intl.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel  noteModel;



  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(noteModel.date);
    final formattedDate = DateFormat('EEEE, MMM d').format(date);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView();
              },
            ),
          );
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 32, top: 16),
                title: Text(
                  noteModel.title ,
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
                subtitle: Text(
                  noteModel.subtitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 35),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  formattedDate,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(.8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
