import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_biblia/shared/models/book.dart';

class BookWidget extends StatelessWidget {
  final Color color;
  final Book book;

  const BookWidget({
    Key? key,
    this.color = Colors.black,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Acrylic(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        width: 150,
        height: 150,
        child: Text(
          book.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        decoration: const BoxDecoration(
          // color: color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
