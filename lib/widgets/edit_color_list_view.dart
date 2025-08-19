import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<EditColorListView> {
  late int currentIndex;
  List<Color> colorsList = [
    Colors.pinkAccent,
    Colors.amber,
    Colors.red,
    Colors.blueAccent,
    Colors.deepOrange,
  ];

  @override
  void initState() {
    currentIndex = colorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = colorsList[index].value;

                setState(() {});
              },
              child: ColorItem(
                color: colorsList[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
