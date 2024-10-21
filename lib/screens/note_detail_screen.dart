import 'package:flutter/material.dart';
import '../models/note_model.dart';

class NoteDetailScreen extends StatelessWidget {
  final Note note;

  NoteDetailScreen({required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(note.content),
      ),
    );
  }
}
