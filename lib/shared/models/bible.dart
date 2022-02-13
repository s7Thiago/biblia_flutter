import 'dart:convert';

import 'package:flutter_biblia/shared/models/book.dart';

class Bible {
  final List<Book> books;

  Bible({required this.books});

  Map<String, dynamic> toMap() {
    return {
      'books': books.map((x) => x.toMap()).toList(),
    };
  }

  factory Bible.fromJsonBookList(List<dynamic> list) {
    return Bible(
      books: List<Book>.from(
        list.map((x) => Book.fromMap(x)),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Bible.fromJson(String source) => Bible.fromJsonBookList(
        json.decode(source),
      );
}
