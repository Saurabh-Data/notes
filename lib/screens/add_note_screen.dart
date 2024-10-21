import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../models/note_model.dart';

class AddNoteScreen extends StatefulWidget {
  @override
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Note'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty && _contentController.text.isNotEmpty) {
                  firebaseService.addNote(Note(
                    id: '',
                    title: _titleController.text,
                    content: _contentController.text,
                  ));
                  Navigator.pop(context);
                }
              },
              child: Text('Add Note'),
            ),
          ],
        ),
      ),
    );
  }
}
