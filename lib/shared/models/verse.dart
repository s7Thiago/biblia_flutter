import 'dart:convert';

class Verse {
  final String content;

  Verse({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return {
      'content': content,
    };
  }

  factory Verse.fromMap(Map<String, dynamic> map) {
    return Verse(
      content: map['content'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Verse.fromJson(String source) => Verse.fromMap(json.decode(source));
}
