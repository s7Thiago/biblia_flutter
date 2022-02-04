import 'dart:convert';

import 'package:flutter_biblia/shared/models/chapter.dart';
import 'package:flutter_biblia/shared/models/verse.dart';

class Book {
  final String name;
  final String abbrev;
  final List<Chapter> chapters;

  Book({
    required this.name,
    required this.abbrev,
    required this.chapters,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'abbrev': abbrev,
      'chapters': chapters,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    // final list = (map['chapters'] as List).map((e) => <String>[...e]).toList();
    final list = (map['chapters'] as List)
        .map(
          (e) => Chapter(verses: [
            ...(e as List).map(
              (verse) => Verse(content: verse),
            ),
          ]),
        )
        .toList();
    final type = list.runtimeType;

    return Book(
      name: map['name'] ?? '',
      abbrev: map['abbrev'] ?? '',
      chapters: list,
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));
}
