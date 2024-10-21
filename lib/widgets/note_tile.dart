import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../screens/note_detail_screen.dart';

class NoteTile extends StatelessWidget {
  final Note note;

  const NoteTile({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text(
        note.content,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoteDetailScreen(note: note), //  NoteDetailScreen
          ),
        );
      },
    );
  }
}
