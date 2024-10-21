import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note_model.dart';

class FirebaseService {
  final CollectionReference notesCollection = FirebaseFirestore.instance.collection('notes');

  // Fetch notes
  Future<List<Note>> fetchNotes(String userId) async {
    try {
      QuerySnapshot snapshot = await notesCollection.where('userId', isEqualTo: userId).get();
      return snapshot.docs.map((doc) => Note.fromFirestore(doc.data() as Map<String, dynamic>, doc.id)).toList();
    } catch (e) {
      print("Error fetching notes: ${e.toString()}");
      return []; // empty list in case of error
    }
  }

  //  new note
  Future<void> addNote(Note note) async {
    try {
      await notesCollection.add(note.toFirestore());
    } catch (e) {
      print("Error adding note: ${e.toString()}");
    }
  }


}
