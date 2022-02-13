import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_biblia/shared/models/book.dart';
import 'package:flutter_biblia/shared/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class ChapterSelection extends StatelessWidget {
  final Book book;

  const ChapterSelection({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(
      context,
      listen: true,
    );

    int itemIndex = 0;

    return NavigationView(
      pane: NavigationPane(
        selected: navigationProvider.chapterIndex,
        onChanged: (newIndex) {
          navigationProvider.changeChapterIndex = newIndex;
        },
        items: [
          ...book.chapters.map(
            (chapter) {
              itemIndex++;
              return PaneItem(
                icon: const Icon(FluentIcons.book_answers),
                title: Text('${book.name} $itemIndex'),
              );
            },
          ),
        ],
      ),
    );
  }
}
