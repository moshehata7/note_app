import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      appBar: AppBar(title: Text("Notes"), actions: [CustomSearchIcon()]),
      body:NoteViewBody() 
    );
  }
}
