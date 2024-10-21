import 'package:flutter/material.dart';
// import '../services/firebase_service.dart';
// import '../models/note_model.dart';
// import '../screens/add_note_screen.dart';
// import '../services/auth_service.dart';
// import '../widgets/note_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final FirebaseService firebaseService = FirebaseService();
  // final AuthService authService = AuthService();
  List<String> notes = [];

  @override
  void initState() {
    super.initState();
    // Fetch notes when user is authenticated
    // authService.user.listen((user) {
    //   if (user != null) {
    //     fetchNotes();
    //   }
    // });
  }

  // Future<void> fetchNotes() async {
  //   List<Note> fetchedNotes = await firebaseService.fetchNotes(userId);
  //   setState(() {
  //     notes = fetchedNotes;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              //  sign-out logic
              // await authService.signOut();
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
          ),
        ],
      ),
      body: notes.isEmpty
          ? const Center(child: Text('No notes found'))
          : ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index]),
            //  NoteTile
            // title: NoteTile(note: notes[index]),
            onTap: () {
              //  note details or edit screen

              // Navigator.push(context, MaterialPageRoute(builder: (_) => NoteDetailScreen(note: notes[index])));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  AddNoteScreen

          // Navigator.push(context, MaterialPageRoute(builder: (_) => AddNoteScreen())).then((_) => fetchNotes());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
