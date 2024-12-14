class Note {
  // Note properties
  final int? id;
  String content;

  // Constructor with named parameters
  Note({
    this.id,
    required this.content,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'] as int, // Convert 'id' from JSON to int
      content: json['body'] as String, // Convert 'body' from JSON to String
    );
  }

  // Method to convert Note to JSON
  Map<String, dynamic> toJson() {
    return {
      'body': content, // Only content is serialized to JSON
    };
  }
}
