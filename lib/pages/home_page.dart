import 'package:flutter/material.dart';
import 'package:flutter_biblia/shared/widgets/desktop/book_selection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Scaffold(
        body: BookSelection(),
      ),
    );
  }
}
