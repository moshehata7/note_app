import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:intl/intl.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(note.date);
    final formattedDate = DateFormat('EEEE, MMM d').format(date);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {

                return EditNoteView(note: note,);
              },
            ),
          );
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(left: 32, top: 16),
                  title: Text(
                    note.title,
                    style: TextStyle(fontSize: 35, color: Colors.black),
                  ),
                  subtitle: Text(
                    maxLines: 2,
                    note.subtitle,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
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
      ),
    );
  }
}
