import 'dart:convert';

import 'package:flutter_biblia/shared/models/verse.dart';

class Chapter {
  final List<Verse> verses;

  Chapter({
    required this.verses,
  });

  Map<String, dynamic> toMap() {
    return {
      'verses': verses.map((x) => x.toMap()).toList(),
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      verses: List<Verse>.from(map['verses']?.map((x) => Verse.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Chapter.fromJson(String source) =>
      Chapter.fromMap(json.decode(source));
}
