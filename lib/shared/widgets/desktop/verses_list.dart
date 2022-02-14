import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_biblia/shared/models/verse.dart';

class VersesList extends StatelessWidget {
  final List<Verse> verses;

  const VersesList({
    Key? key,
    required this.verses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verses.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  verses[index].content,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
