import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_biblia/shared/models/bible.dart';
import 'package:flutter_biblia/shared/models/book.dart';
import 'package:flutter_biblia/shared/provider/book_provider.dart';
import 'package:flutter_biblia/shared/provider/navigation_provider.dart';
import 'package:flutter_biblia/shared/widgets/desktop/chapter_selection.dart';
import 'package:provider/provider.dart';

class BookSelection extends StatelessWidget {
  const BookSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookProvider>(context);
    final navigationProvider = Provider.of<NavigationProvider>(
      context,
      listen: true,
    );

    return FutureBuilder<Bible>(
      future: bookProvider.data(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NavigationView(
            pane: NavigationPane(
              selected: navigationProvider.index,
              onChanged: (currentIndex) {
                navigationProvider.changeIndex = currentIndex;
              },
              items: [
                ...snapshot.data!.books
                    .map(
                      (book) => PaneItem(
                        icon: const Icon(FluentIcons.book_answers),
                        title: Text(book.name),
                      ),
                    )
                    .toList(),
              ],
            ),
            content: NavigationBody(
              index: navigationProvider.index,
              children: List.generate(
                66,
                (index) {
                  Book book = snapshot.data!.books[index];
                  return ChapterSelection(book: book);
                },
              ),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
