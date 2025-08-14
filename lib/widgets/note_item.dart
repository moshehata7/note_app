import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 32 ,top: 16),
              title: Text(
                "Flutter tips",
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
              subtitle: Text(
                "Build your career",
                style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.7)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 35),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text("may 22 ,2025",style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(.8)),),
            )
          ],
        ),
      ),
    );
  }
}
