class Note {
  String id;
  String title;
  String content;

  Note({required this.id, required this.title, required this.content});

  factory Note.fromFirestore(Map<String, dynamic> data, String documentId) {
    return Note(
      id: documentId,
      title: data['title'] ?? '',
      content: data['content'] ?? '',
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'content': content,
    };
  }
}
