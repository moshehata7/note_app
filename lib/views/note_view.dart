import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes" ),
        actions: [
        CustomSearchIcon()
        ],
      ),
    
    );
  }
}